! NOTE: Define DEBUG_ON through compilation macro for extra output.

MODULE Nemo_Adv_X_Helpers

    use omp_lib 
    use Nemo_Helpers

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
            (JPI, JPJ, pdt, put, pcrh, psm , ps0, psx, psxx, psy, psyy, psxy, e1e2t, tmask)
        !!----------------------------------------------------------
        !! - Routine: initialize_adv_x
        !! - Purpose: Initializes variables required for adv_x_mock.
        !!----------------------------------------------------------
        INTEGER                                , INTENT(out) ::   JPI, JPJ          ! Dimensions of the workspace.
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

        ! Variables that define the dimensions of the arrays.
        INTEGER :: &
            NCATS, &    ! Number of categories, functioning as dim 3.
            TMASK3      ! Uncertain of the origin, but value comes from logs.

#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: initialize_adv_x"
#endif

        ! Set config variables.
        pdt = 1
        pcrh = 1

        ! Set dimension constants according to CRAY_ACC_DEBUG=3 log.
        JPI = 92
        JPJ = 167
        NCATS = 5
        TMASK3 = 75     

        ! Allocate data for the variables.
        ! Dimensions are extracted from a nemo run using CRAY_ACC_DEBUG=3.
#ifdef DEBUG_ON
    write (*,*) "initialize_adv_x: Allocating data.."
#endif
        allocate ( put ( JPI, JPJ ) )
        allocate ( psm ( JPI, JPJ, NCATS) )
        allocate ( ps0 ( JPI, JPJ, NCATS) )
        allocate ( psx ( JPI, JPJ, NCATS) )
        allocate ( psy ( JPI, JPJ, NCATS) )
        allocate ( psxx ( JPI, JPJ, NCATS) )
        allocate ( psyy ( JPI, JPJ, NCATS) )
        allocate ( psxy ( JPI, JPJ, NCATS) )
        allocate ( e1e2t (JPI, JPJ) )
        allocate ( tmask ( JPI, JPJ, TMASK3) )

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
         psm_val, ps0_val, psx_val, psxx_val, psy_val, psyy_val, psxy_val, &
         psm_err, ps0_err, psx_err, psxx_err, psy_err, psyy_err, psxy_err, &
         validation, error)
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
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: psx, psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: psxx, psyy, psxy   ! 2nd moments
 
        ! Validation booleans per matrix.
        LOGICAL, INTENT(out) :: psm_val                         ! area
        LOGICAL, INTENT(out) :: ps0_val                         ! field to be advected
        LOGICAL, INTENT(out) :: psx_val, psy_val                ! 1st moments 
        LOGICAL, INTENT(out) :: psxx_val, psyy_val, psxy_val    ! 2nd moments

        ! Error values per matrix.
        REAL(wp), INTENT(out) :: psm_err                        ! area
        REAL(wp), INTENT(out) :: ps0_err                        ! field to be advected
        REAL(wp), INTENT(out) :: psx_err, psy_err               ! 1st moments 
        REAL(wp), INTENT(out) :: psxx_err, psyy_err, psxy_err   ! 2nd moments

        ! Global validation boolean and error real.
        LOGICAL, INTENT(out) :: validation
        REAL(wp), INTENT(out) :: error

        ! Set validation and error per matrix.
        IF (matrix_equality_real(psm, seq_psm)) THEN
            psm_val = .true.
        ELSE
            psm_val = .false.
        END IF

        IF (matrix_equality_real(ps0, seq_ps0)) THEN
            ps0_val = .true.
        ELSE
            ps0_val = .false.
        END IF

        IF (matrix_equality_real(psx, seq_psx)) THEN
            psx_val = .true.
        ELSE
            psx_val = .false.
        END IF

        IF (matrix_equality_real(psxx, seq_psxx)) THEN
            psxx_val = .true.
        ELSE
            psxx_val = .false.
        END IF

        IF (matrix_equality_real(psy, seq_psy)) THEN
            psy_val = .true.
        ELSE
            psy_val = .false.
        END IF

        IF (matrix_equality_real(psyy, seq_psyy)) THEN
            psyy_val = .true.
        ELSE
            psyy_val = .false.
        END IF

        IF (matrix_equality_real(psxy, seq_psxy)) THEN
            psxy_val = .true.
        ELSE
            psxy_val = .false.
        END IF        

        ! Compute error values.
        psm_err = matrix_diff_real(psm, seq_psm)
        ps0_err = matrix_diff_real(ps0, seq_ps0)
        psx_err = matrix_diff_real(psx, seq_psx)
        psxx_err = matrix_diff_real(psxx, seq_psxx)
        psy_err = matrix_diff_real(psy, seq_psy)
        psyy_err = matrix_diff_real(psyy, seq_psyy)
        psxy_err = matrix_diff_real(psxy, seq_psxy)

        ! Update global values.
        validation = psm_val .and. ps0_val .and. psx_val .and. psxx_val .and. &
            psy_val .and. psyy_val .and. psxy_val
        error = psm_err + ps0_err + psx_err + psxx_err + psy_err + psyy_err + psxy_err
    END SUBROUTINE validate_results_adv_x


    SUBROUTINE print_results_adv_x &
            (func_name, validation, error, timing, speedup, &
            psm_val, ps0_val, psx_val, psxx_val, psy_val, psyy_val, psxy_val, &
            psm_err, ps0_err, psx_err, psxx_err, psy_err, psyy_err, psxy_err)
        !!-----------------------------------------------------------
        !! - Routine: print_results_adv_x
        !! - Purpose: Print a results overview of a given experiment.
        !!-----------------------------------------------------------
        CHARACTER(*), INTENT(in) :: func_name   ! Evaluated function.
        REAL(wp), INTENT(in) :: &
            timing, &                           ! Total runtime.
            speedup                             ! Acquired speedup.

        ! Validation booleans per matrix.
        LOGICAL, INTENT(in) :: psm_val                         ! area
        LOGICAL, INTENT(in) :: ps0_val                         ! field to be advected
        LOGICAL, INTENT(in) :: psx_val, psy_val                ! 1st moments 
        LOGICAL, INTENT(in) :: psxx_val, psyy_val, psxy_val    ! 2nd moments

        ! Error values per matrix.
        REAL(wp), INTENT(in) :: psm_err                        ! area
        REAL(wp), INTENT(in) :: ps0_err                        ! field to be advected
        REAL(wp), INTENT(in) :: psx_err, psy_err               ! 1st moments 
        REAL(wp), INTENT(in) :: psxx_err, psyy_err, psxy_err   ! 2nd moments

        ! Global validation boolean and error real.
        LOGICAL, INTENT(in) :: validation
        REAL(wp), INTENT(in) :: error

        ! Local string conversion for printing logical values.
        CHARACTER(7) :: validation_string
        CHARACTER(7) :: psm_val_str                                 ! area
        CHARACTER(7) :: ps0_val_str                                 ! field to be advected
        CHARACTER(7) :: psx_val_str, psy_val_str                    ! 1st moments 
        CHARACTER(7) :: psxx_val_str, psyy_val_str, psxy_val_str    ! 2nd moments

        ! Convert the validation into a string used for printing.
        validation_string = convert_logical(validation)
        psm_val_str = convert_logical(psm_val)
        ps0_val_str = convert_logical(ps0_val)
        psx_val_str = convert_logical(psx_val)
        psxx_val_str = convert_logical(psxx_val)
        psy_val_str = convert_logical(psy_val)
        psyy_val_str = convert_logical(psyy_val)
        psxy_val_str = convert_logical(psxy_val)

        ! Print the overview for the given experiment.
        print "( a8, a, a8 )", &
        "======= ", trim ( func_name ), " ========"
        print "( a15, a8       )", "Validation    : ", validation_string
        print "( a15, es10.3e2 )", "Error         : ", error
        print "( a15, es10.3e2 )", "Timing (s)    : ", timing
        print "( a15, es10.3e2 )", "Speedup       : ", speedup
        print "( a25           )", "-------------------------"
        print "( a15, a8       )", "psm_val       :", psm_val_str
        print "( a15, es10.3e2 )", "psm_err       :", psm_err
        print "( a15, a8       )", "ps0_val       :", ps0_val_str
        print "( a15, es10.3e2 )", "ps0_err       :", ps0_err
        print "( a15, a8       )", "psx_val       :", psx_val_str
        print "( a15, es10.3e2 )", "psx_err       :", psx_err
        print "( a15, a8       )", "psxx_val      :", psxx_val_str
        print "( a15, es10.3e2 )", "psxx_err      :", psxx_err
        print "( a15, a8       )", "psy_val       :", psy_val_str
        print "( a15, es10.3e2 )", "psy_err       :", psy_err
        print "( a15, a8       )", "psyy_val      :", psyy_val_str
        print "( a15, es10.3e2 )", "psyy_err      :", psyy_err
        print "( a15, a8       )", "psxy_val      :", psxy_val_str
        print "( a15, es10.3e2 )", "psxy_err      :", psxy_err
        write (*,*) ""
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

        ! Validation booleans per matrix.
        logical :: psm_val                         ! area
        LOGICAL :: ps0_val                         ! field to be advected
        LOGICAL :: psx_val, psy_val                ! 1st moments 
        LOGICAL :: psxx_val, psyy_val, psxy_val    ! 2nd moments

        ! Error values per matrix.
        REAL(wp) :: psm_err                        ! area
        REAL(wp) :: ps0_err                        ! field to be advected
        REAL(wp) :: psx_err, psy_err               ! 1st moments 
        REAL(wp) :: psxx_err, psyy_err, psxy_err   ! 2nd moments

        ! Global validation boolean and error real.
        LOGICAL :: validation
        REAL(wp) :: error

        ! Time the execution of the given function.
        time_start = omp_get_wtime()
        call mock_func &
            (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, &
             e1e2t, tmask)
        time_exec = omp_get_wtime() - time_start

        ! Validate results.
        call validate_results_adv_x &
            (seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, &
            seq_psxy, psm, ps0, psx, psxx, psy, psyy, psxy, &
            psm_val, ps0_val, psx_val, psxx_val, psy_val, psyy_val, psxy_val, &
            psm_err, ps0_err, psx_err, psxx_err, psy_err, psyy_err, psxy_err, &
            validation, error)

        ! Print results.
        call print_results_adv_x &
            (func_name, validation, error, time_exec, time_seq / time_exec, &
            psm_val, ps0_val, psx_val, psxx_val, psy_val, psyy_val, psxy_val, &
            psm_err, ps0_err, psx_err, psxx_err, psy_err, psyy_err, psxy_err)

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
    use Nemo_Adv_X_Collapse_CPU
    use Nemo_Adv_X_Collapse_Custom
    use Nemo_Adv_X_Data
    use Nemo_Adv_X_Data_Beta
    use Nemo_Adv_X_Data_Simd

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

    ! Variables that indicate workspace dimensions.
    INTEGER :: JPI, JPJ

#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: main_program."
#endif

    ! Initialize the "init_" variables required for running the mock code.
    call initialize_adv_x &
        (JPI, JPJ, &
         pdt, put, pcrh, init_psm , init_ps0, init_psx, init_psxx, init_psy, &
         init_psyy, init_psxy, e1e2t, tmask)

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
#endif

    !-------------------------------------!
    !  Call sequential code as baseline.  !
    !-------------------------------------!
    time_start = omp_get_wtime()
    call adv_x_mock_seq &
        (JPI, JPJ, pdt, put , pcrh, seq_psm , seq_ps0, seq_psx, seq_psxx, &
         seq_psy, seq_psyy, seq_psxy, e1e2t, tmask)
    time_seq = omp_get_wtime() - time_start

#ifdef DEBUG_ON
    ! Print matrices to test repeatability.
    write (*,*) "main_program: after sequential baseline"
#endif

    !----------------------------------!
    !  Call sequential code as check.  !
    !----------------------------------!
    mock_func => adv_x_mock_seq
    call run_mock(mock_func, "sequential", time_seq, &
        JPI, JPJ, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)

    !------------------------!
    !  Call data_beta code.  !
    !------------------------!
    mock_func => adv_x_mock_data_beta
    call run_mock(mock_func, "data_beta", time_seq, &
        JPI, JPJ, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)        
    
    !------------------------------!
    !  Call collapse_custom code.  !
    !------------------------------!
    mock_func => adv_x_mock_collapse_cpu
    call run_mock(mock_func, "collapse_cpu", time_seq, &
        JPI, JPJ, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)        

    !------------------------------!
    !  Call collapse_custom code.  !
    !------------------------------!
    mock_func => adv_x_mock_collapse_custom
    call run_mock(mock_func, "collapse_custom", time_seq, &
        JPI, JPJ, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    

    !-------------------!
    !  Call data code.  !
    !-------------------!
    mock_func => adv_x_mock_data
    call run_mock(mock_func, "data", time_seq, &
        JPI, JPJ, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)

    !------------------------!
    !  Call data_simd code.  !
    !------------------------!
    mock_func => adv_x_mock_data_simd
    call run_mock(mock_func, "data_simd", time_seq, &
        JPI, JPJ, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    

#ifdef DEBUG_ON
    write (*,*) "OUT: main_program."
    write (*,*) ""
#endif

end program Nemo_Adv_X
