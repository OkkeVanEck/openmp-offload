! NOTE: Define DEBUG_ON through compilation macro for extra output.

MODULE Nemo_Adv_X_Run
    use Nemo_Adv_X_Helpers

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    implicit none 
    
    public :: &
        run_mock

    ABSTRACT INTERFACE
        SUBROUTINE adv_x_func &
                (jpi, jpj, ncats, &
                 pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask)
            IMPORT :: wp

            INTEGER                   , INTENT(in   ) ::   jpi, jpj, ncats    ! Dimension of the workspace.
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
                        jpi, jpj, ncats, &
                        pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
                        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
                        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)
        ! Function specific variables.
        PROCEDURE(adv_x_func), POINTER, INTENT(in) :: mock_func
        CHARACTER(*), INTENT(in) :: func_name

        ! Stores sequential time.
        REAL(wp), INTENT(in) :: time_seq

        ! Variables required for runs.
        INTEGER                   , INTENT(in) :: jpi, jpj, ncats   ! Dimension of the workspace.
        REAL(wp)                  , INTENT(in) :: pdt               ! the time step
        REAL(wp)                  , INTENT(in) :: pcrh              ! call adv_x then adv_y (=1) or the opposite (=0)
        REAL(wp), DIMENSION(:,:)  , INTENT(in) :: put               ! i-direction ice velocity at U-point [m/s]
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
            (jpi, jpj, ncats, & 
             pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask)
        time_exec = omp_get_wtime() - time_start

        ! Validate results.
        call validate_results_adv_x &
            (seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, &
            seq_psxy, psm, ps0, psx, psxx, psy, psyy, psxy, &
            psm_val, ps0_val, psx_val, psxx_val, psy_val, psyy_val, psxy_val, &
            psm_err, ps0_err, psx_err, psxx_err, psy_err, psyy_err, psxy_err, &
            validation, error)

        ! Print results.
        call print_val_results_adv_x &
            (func_name, validation, error, time_exec, time_seq / time_exec, &
            psm_val, ps0_val, psx_val, psxx_val, psy_val, psyy_val, psxy_val, &
            psm_err, ps0_err, psx_err, psxx_err, psy_err, psyy_err, psxy_err)

        ! Reset variables for next execution.
        call reset_adv_x &
            (init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, &
            init_psxy, psm, ps0, psx, psxx, psy, psyy, psxy)
    END SUBROUTINE run_mock
  
END MODULE Nemo_Adv_X_Run


program Nemo_Adv_X_Validation
    ! Local imports.
    use Nemo_Adv_X_Helpers
    use Nemo_Adv_X_Run

    ! External imports.
    use Nemo_Adv_X_Seq
    use Nemo_Adv_X_Collapse
    use Nemo_Adv_X_Collapse_CPU
    use Nemo_Adv_X_Collapse_Custom
    use Nemo_Adv_X_Rc
    use Nemo_Adv_X_Rc_Collapsed
    use Nemo_Adv_X_Rc_Collapsed_Wrong
    use Nemo_Adv_X_Data
    use Nemo_Adv_X_Data_Beta
    use Nemo_Adv_X_Data_Cat
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
    INTEGER :: JPI, JPJ, NCATS

#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: main_program."
#endif

    ! Initialize the "init_" variables required for running the mock code.
    call initialize_adv_x &
        (JPI, JPJ, NCATS, &
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
    call adv_x_mock_seq(JPI, JPJ, NCATS, & 
         pdt, put, pcrh, seq_psm , seq_ps0, seq_psx, seq_psxx, seq_psy, &
         seq_psyy, seq_psxy, e1e2t, tmask)
    time_seq = omp_get_wtime() - time_start

#ifdef DEBUG_ON
    ! Print matrices to test repeatability.
    write (*,*) "main_program: after sequential baseline"
#endif

    ! !----------------------------------!
    ! !  Call sequential code as check.  !
    ! !----------------------------------!
    ! mock_func => adv_x_mock_seq
    ! call run_mock(mock_func, "sequential", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)

    ! !------------------------!
    ! !  Call data_beta code.  !
    ! !------------------------!
    ! mock_func => adv_x_mock_data_beta
    ! call run_mock(mock_func, "data_beta", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)        
    
    ! !-----------------------!
    ! !  Call data_cat code.  !
    ! !-----------------------!
    ! mock_func => adv_x_mock_data_cat
    ! call run_mock(mock_func, "data_cat", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)        

    ! !---------------------------!
    ! !  Call collapse_cpu code.  !
    ! !---------------------------!
    ! mock_func => adv_x_mock_collapse_cpu
    ! call run_mock(mock_func, "collapse_cpu", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)        

    ! !-------------------------------------!
    ! !  Perf test cpu code with 7 thread.  !
    ! !-------------------------------------!
    ! mock_func => adv_x_mock_cpu
    ! call run_mock(mock_func, "cpu_7threads", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)            

    !-----------------!
    !  Call rc code.  !
    !-----------------!
    mock_func => adv_x_mock_rc
    call run_mock(mock_func, "rc", time_seq, &
        JPI, JPJ, NCATS, &
        pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)   
    
    !---------------------------------!
    !  Call rc_collapsed_wrong code.  !
    !---------------------------------!
    mock_func => adv_x_mock_rc_collapsed_wrong
    call run_mock(mock_func, "rc_collapsed_wrong", time_seq, &
        JPI, JPJ, NCATS, &
        pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    
    
    !---------------------------!
    !  Call rc_collapsed code.  !
    !---------------------------!
    mock_func => adv_x_mock_rc_collapsed
    call run_mock(mock_func, "rc_collapsed", time_seq, &
        JPI, JPJ, NCATS, &
        pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
        seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
        init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    
    
    ! !------------------------------!
    ! !  Call collapse_custom code.  !
    ! !------------------------------!
    ! mock_func => adv_x_mock_collapse_custom
    ! call run_mock(mock_func, "collapse_custom", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    

    ! !-----------------------!
    ! !  Call collapse code.  !
    ! !-----------------------!
    ! mock_func => adv_x_mock_collapse
    ! call run_mock(mock_func, "collapse", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    

    ! !-------------------!
    ! !  Call data code.  !
    ! !-------------------!
    ! mock_func => adv_x_mock_data
    ! call run_mock(mock_func, "data", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)

    ! !------------------------!
    ! !  Call data_simd code.  !
    ! !------------------------!
    ! mock_func => adv_x_mock_data_simd
    ! call run_mock(mock_func, "data_simd", time_seq, &
    !     JPI, JPJ, NCATS, &
    !     pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, e1e2t, tmask, &
    !     seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, seq_psxy, &
    !     init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, init_psxy)    

#ifdef DEBUG_ON
    write (*,*) "OUT: main_program."
    write (*,*) ""
#endif

end program Nemo_Adv_X_Validation
