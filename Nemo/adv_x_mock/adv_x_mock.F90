! NOTE: Define DEBUG_ON through compilation macro for extra output.

MODULE Nemo_Adv_X_Helpers

    use omp_lib 

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    implicit none 
    
    public :: &
        initialize_adv_x, &
        reset_adv_x, &
        validate_results_adv_x, &
        print_results_adv_x

contains 

    SUBROUTINE initialize_adv_x &
            (dim, jpi, jpj, pdt, put, pcrh, psm , ps0, psx, psxx, psy, psyy, &
             psxy, e1e2t, tmask)
        !!----------------------------------------------------------
        !! - Routine: initialize_adv_x
        !! - Purpose: Initializes variables required for adv_x_mock.
        !!----------------------------------------------------------
        INTEGER                                , INTENT(in)  ::   dim               ! Dimension of the arrays.
        INTEGER                                , INTENT(in)  ::   jpi, jpj          ! Dimension of the workspaces.
        REAL(wp)                               , INTENT(out) ::   pdt               ! the time step
        REAL(wp)                               , INTENT(out) ::   pcrh              ! call adv_x then adv_y (=1) or the opposite (=0)
        REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(out) ::   put               ! i-direction ice velocity at U-point [m/s]
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(out) ::   psm               ! area
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(out) ::   ps0               ! field to be advected
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(out) ::   psx, psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(out) ::   psxx, psyy, psxy  ! 2nd moments
        REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(out) ::   e1e2t             ! associated metrics at t-point
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(out) ::   tmask             ! land/ocean mask at T-pts

        ! Variables used to control internal RNG.
        INTEGER :: n
        INTEGER, ALLOCATABLE :: seed(:)

#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: initialize_adv_x"
#endif

        ! Set config variables.
        pdt = 1
        pcrh = 1

        ! Allocate data for the variables.
        ! Dimensions are extracted from a nemo run using CRAY_ACC_DEBUG=3.
#ifdef DEBUG_ON
    write (*,*) "initialize_adv_x: Allocating data.."
#endif
        allocate ( put ( dim, dim ) )
        allocate ( psm ( dim, dim, dim) )
        allocate ( ps0 ( dim, dim, dim) )
        allocate ( psx ( dim, dim, dim) )
        allocate ( psy ( dim, dim, dim) )
        allocate ( psxx ( dim, dim, dim) )
        allocate ( psyy ( dim, dim, dim) )
        allocate ( psxy ( dim, dim, dim) )
        allocate ( e1e2t (92, 167) )
        allocate ( tmask ( 92, 167, 75) )

        ! Set internal RNG to be repeatable.
        call random_seed(size=n)
        allocate(seed(n))
        seed = 123456789
        call random_seed(put=seed)
        deallocate(seed)

        ! Fill matrices with random values.
#ifdef DEBUG_ON
    write (*,*) "initialize_adv_x: Filling matrices with random numbers.."
#endif
        call RANDOM_NUMBER(put)
        call RANDOM_NUMBER(psm)
        call RANDOM_NUMBER(ps0)
        call RANDOM_NUMBER(psx)
        call RANDOM_NUMBER(psy)
        call RANDOM_NUMBER(psxx)
        call RANDOM_NUMBER(psyy)
        call RANDOM_NUMBER(psxy)
        call RANDOM_NUMBER(e1e2t)
        call RANDOM_NUMBER(tmask)

#ifdef DEBUG_ON
    write (*,*) "OUT: initialize_adv_x"
    write (*,*) ""
#endif
    END SUBROUTINE initialize_adv_x


    SUBROUTINE reset_adv_x &
            (init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, &
            init_psxy, psm, ps0, psx, psxx, psy, psyy, psxy)
        !!--------------------------------------------------------
        !! - Routine: reset_adv_x
        !! - Purpose: Reset the variables to their initial values.
        !!--------------------------------------------------------
        ! Variables to use as storage of initial values.
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: init_psm                            ! area
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: init_ps0                            ! field to be advected
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: init_psx, init_psy                  ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: init_psxx, init_psyy, init_psxy     ! 2nd moments
    

        ! Variables to use during executions.
        REAL(wp), DIMENSION(:,:,:), INTENT(out) :: psm                ! area
        REAL(wp), DIMENSION(:,:,:), INTENT(out) :: ps0                ! field to be advected
        REAL(wp), DIMENSION(:,:,:), INTENT(out) :: psx , psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), INTENT(out) :: psxx, psyy, psxy   ! 2nd moments
        
        psm = init_psm
        ps0 = init_ps0
        psx = init_psx
        psxx = init_psxx
        psy = init_psy
        psyy = init_psyy
        psxy = init_psxy

    END SUBROUTINE reset_adv_x


    SUBROUTINE validate_results_adv_x &
        (seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
         psm, ps0, psx, psxx, psy, psyy, psxy, &
         validation)
        !!--------------------------------------------------------
        !! - Routine: validate_results_adv_x
        !! - Purpose: Check whether the arrays are the same.
        !!--------------------------------------------------------
        ! Variables to use as storage of sequential values.
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: seq_psm                         ! area
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: seq_ps0                         ! field to be advected
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: seq_psx, seq_psy                ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: seq_psxx, seq_psyy, seq_psxy    ! 2nd moments
     
        ! Variables to use during executions.
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: psm                ! area
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: ps0                ! field to be advected
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: psx , psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: psxx, psyy, psxy   ! 2nd moments
 
        ! Validation boolean.
        LOGICAL, INTENT(out) :: validation
        
        ! Classic Fortran does NOT support lazy if-comparison, so..
        IF (ANY(psm.ne.seq_psm)) then
            validation = .false.
        ELSEIF (ANY(ps0.ne.seq_ps0)) THEN
            validation = .false.
        ELSEIF (ANY(psx.ne.seq_psx)) THEN
            validation = .false.
        ELSEIF (ANY(psxx.ne.seq_psxx)) THEN
            validation = .false.
        ELSEIF (ANY(psy.ne.seq_psy)) THEN
            validation = .false.
        ELSEIF (ANY(psyy.ne.seq_psyy)) THEN
            validation = .false.
        ELSEIF (ANY(psxy.ne.seq_psxy)) THEN
            validation = .false.
        ELSE
            validation = .true.
        END IF        
    END SUBROUTINE validate_results_adv_x


    SUBROUTINE print_results_adv_x &
            (func_name, validation, timing, speedup)
        !!-----------------------------------------------------------
        !! - Routine: print_results_adv_x
        !! - Purpose: Print a results overview of a given experiment.
        !!-----------------------------------------------------------
        CHARACTER(*), INTENT(in) :: func_name   ! Evaluated function.
        LOGICAL, INTENT(in) :: validation       ! Validation boolean.
        REAL(wp), INTENT(in) :: &
            timing, &                           ! Total runtime.
            speedup                             ! Acquired speedup.

        ! Local validation string conversion for printing.
        CHARACTER(7) :: validation_string

        ! Convert the validation into a string used for printing.
        IF (validation) THEN
            validation_string = "PASSED"
        ELSE
            validation_string = "FAILED"
        END IF

        ! Print the overview for the given experiment.
        print "( a9, a, a9 )", &
        "======== ", trim ( func_name ), " ========="
        print "( a15, a8       )", "Validation    : ", validation_string
        print "( a15, es10.3e2 )", "Timing (s)    : ", timing
        print "( a15, es10.3e2 )", "Speedup       : ", speedup
        write (*,*) ""
    END SUBROUTINE print_results_adv_x

END MODULE Nemo_Adv_X_Helpers


MODULE Nemo_Adv_X_Run

    use Nemo_Adv_X_Helpers

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    implicit none 
    
    public :: &
        run_mock

    ABSTRACT INTERFACE
        SUBROUTINE adv_x_func &
                (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, &
                 psxy, e1e2t, tmask)
            IMPORT :: wp

            INTEGER                   , INTENT(in   ) ::   jpi, jpj           ! Dimension of the workspace.
            REAL(wp)                  , INTENT(in   ) ::   pdt                ! the time step
            REAL(wp)                  , INTENT(in   ) ::   pcrh               ! call adv_x then adv_y (=1) or the opposite (=0)
            REAL(wp), DIMENSION(:,:)  , INTENT(in   ) ::   put                ! i-direction ice velocity at U-point [m/s]
            REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) ::   psm                ! area
            REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) ::   ps0                ! field to be advected
            REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) ::   psx , psy          ! 1st moments 
            REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) ::   psxx, psyy, psxy   ! 2nd moments
            REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(in   ) ::   e1e2t              ! associated metrics at t-point
            REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in   ) ::   tmask              ! land/ocean mask at T-pts        
        END SUBROUTINE adv_x_func
    END INTERFACE
  
  CONTAINS
  
    SUBROUTINE run_mock(mock_func, func_name, time_seq, &
                        jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
                        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
                        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)
        ! Function specific variables.
        PROCEDURE(adv_x_func), POINTER, INTENT(in) :: mock_func
        CHARACTER(*), INTENT(in) :: func_name

        ! Stores sequential time.
        REAL(wp), INTENT(in) :: time_seq

        ! Variables required for runs.
        INTEGER                   , INTENT(in) :: jpi, jpj    ! Dimension of the workspace.
        REAL(wp)                  , INTENT(in) :: pdt         ! the time step
        REAL(wp)                  , INTENT(in) :: pcrh        ! call adv_x then adv_y (=1) or the opposite (=0)
        REAL(wp), DIMENSION(:,:)  , INTENT(in) :: put         ! i-direction ice velocity at U-point [m/s]
        REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(in) :: e1e2t       ! associated metrics at t-point
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: tmask       ! land/ocean mask at T-pts    
        
        ! Variables to use during executions.
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: psm                ! area
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: ps0                ! field to be advected
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: psx , psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: psxx, psyy, psxy   ! 2nd moments

        ! Variables to use as storage of sequential values.
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: seq_psm                         ! area
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: seq_ps0                         ! field to be advected
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: seq_psx, seq_psy                ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: seq_psxx, seq_psyy, seq_psxy    ! 2nd moments

        ! Variables to use as storage of initial values.
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: init_psm                            ! area
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: init_ps0                            ! field to be advected
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: init_psx, init_psy                  ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: init_psxx, init_psyy, init_psxy     ! 2nd moments
        
        ! Used for timing executions.
        REAL(wp) :: &
            time_start, &   ! Registers start time.
            time_exec       ! Registers end time - start time.

        ! Validation boolean.
        LOGICAL :: validation

        ! Time the execution of the given function.
        time_start = omp_get_wtime()
        call mock_func &
            (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, &
             e1e2t, tmask)
        time_exec = omp_get_wtime() - time_start

#ifdef DEBUG_ON
    ! Print matrices to test repeatability.
    write (*,*) "main_program: after validate_results_adv_x"
    call print_real_3d_matrix(ps0, "ps0")
#endif

        ! Validate results.
        call validate_results_adv_x &
            (seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, &
            seq_psxy, psm, ps0, psx, psxx, psy, psyy, psxy, &
            validation)

        ! Print results.
        call print_results_adv_x &
            (func_name, validation, time_exec, time_seq / time_exec)

        ! Reset variables for next execution.
        call reset_adv_x &
            (init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, &
            init_psxy, psm, ps0, psx, psxx, psy, psyy, psxy)
    END SUBROUTINE run_mock
  
END MODULE Nemo_Adv_X_Run


program Nemo_Adv_X
    ! Local imports.
    use Nemo_Adv_X_Helpers
    use Nemo_Adv_X_Run

    ! External imports.
    use Nemo_Adv_X_Seq
    use Nemo_Adv_X_Data
    use Nemo_Adv_X_Data_Beta
    use Nemo_Adv_X_Data_Simd
    use omp_lib

    IMPLICIT none

    INTEGER :: jpi, jpj, dim    ! Dimension of the workspace.
    REAL(wp) :: pdt             ! the time step
    REAL(wp) :: pcrh            ! call adv_x then adv_y (=1) or the opposite (=0)
    REAL(wp), DIMENSION(:,:), ALLOCATABLE :: put      ! i-direction ice velocity at U-point [m/s]
    REAL(wp), DIMENSION(:,:), ALLOCATABLE :: e1e2t    ! associated metrics at t-point
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: tmask  ! land/ocean mask at T-pts    

    ! Variables to use during executions.
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: psm                ! area
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: ps0                ! field to be advected
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: psx , psy          ! 1st moments 
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: psxx, psyy, psxy   ! 2nd moments

    ! Variables to use as storage of sequential values.
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: seq_psm                         ! area
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: seq_ps0                         ! field to be advected
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: seq_psx, seq_psy                ! 1st moments 
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: seq_psxx, seq_psyy, seq_psxy    ! 2nd moments

    ! Variables to use as storage of initial values.
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: init_psm                            ! area
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: init_ps0                            ! field to be advected
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: init_psx, init_psy                  ! 1st moments 
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: init_psxx, init_psyy, init_psxy     ! 2nd moments

    ! Used for timing executions.
    REAL(wp) :: &
        time_start, &   ! Registers start time.
        time_seq        ! Stores sequential time.

    ! Function pointer used for executing the code.
    PROCEDURE(adv_x_func), POINTER :: mock_func

#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: main_program."
#endif

    ! Setup the dimensions of the arrays and workspaces.
    dim = 5
    jpi = 4
    jpj = 4

    ! Initialize the "init_" variables required for running the mock code.
    call initialize_adv_x &
        (dim, jpi, jpj, pdt, put, pcrh, init_psm , init_ps0, init_psx, &
         init_psxx, init_psy, init_psyy, init_psxy, e1e2t, tmask)

    ! Copy initialized variables for running the sequential experiment.
    seq_psm = init_psm
    seq_ps0 = init_ps0
    seq_psx = init_psx
    seq_psxx = init_psxx
    seq_psy = init_psy
    seq_psyy = init_psyy
    seq_psxy = init_psxy

    ! Copy initialized variables for running the parallel experiments.
    psm = init_psm
    ps0 = init_ps0
    psx = init_psx
    psxx = init_psxx
    psy = init_psy
    psyy = init_psyy
    psxy = init_psxy

#ifdef DEBUG_ON
    ! Print matrices to test repeatability.
    write (*,*) "main_program: after initialization"
    call print_real_3d_matrix(init_ps0, "init_ps0")
#endif

    !-------------------------!
    !  Call sequential code.  !
    !-------------------------!
    time_start = omp_get_wtime()
    call adv_x_mock_seq &
        (jpi, jpj, pdt, put , pcrh, seq_psm , seq_ps0, seq_psx, seq_psxx, &
         seq_psy, seq_psyy, seq_psxy, e1e2t, tmask)
    time_seq = omp_get_wtime() - time_start

#ifdef DEBUG_ON
    ! Print matrices to test repeatability.
    write (*,*) "main_program: after adv_x_mock_seq"
    call print_real_3d_matrix(seq_ps0, "seq_ps0")
#endif

    ! Print sequential results.
    call print_results_adv_x &
            ("sequential", .true., time_seq, 1.0_wp)

    !-------------------!
    !  Call data code.  !
    !-------------------!
    mock_func => adv_x_mock_data
    call run_mock(mock_func, "data", time_seq, &
        jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)

    !------------------------!
    !  Call data_simd code.  !
    !------------------------!
    mock_func => adv_x_mock_data_simd
    call run_mock(mock_func, "data_simd", time_seq, &
        jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)

    !------------------------!
    !  Call data_beta code.  !
    !------------------------!
    mock_func => adv_x_mock_data_beta
    call run_mock(mock_func, "data_beta", time_seq, &
        jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    

#ifdef DEBUG_ON
    write (*,*) "OUT: main_program."
    write (*,*) ""
#endif

end program Nemo_Adv_X
