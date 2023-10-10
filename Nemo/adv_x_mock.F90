! NOTE: Define DEBUG_ON through compilation macro for extra output.

MODULE Nemo_Adv_X_Mocks

    use omp_lib 

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    ! Import helper functions.
    use Nemo_Helpers

    implicit none 
  
    public :: &
        initialize_adv_x, &
        reset_adv_x, &
        validate_results_adv_x, &
        print_results_adv_x, &
        adv_x_mock_seq, &
        adv_x_mock_data_beta

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
        allocate ( e1e2t (jpi, jpj) )
        allocate ( tmask ( dim, dim, dim) )

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
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: &
            init_psm, &                         ! area
            init_ps0, &                         ! field to be advected
            init_psx, init_psy, &               ! 1st moments 
            init_psxx, init_psyy, init_psxy     ! 2nd moments

        ! Variables to use during executions.
        REAL(wp), DIMENSION(:,:,:), INTENT(out) :: &
            psm, &              ! area
            ps0, &              ! field to be advected
            psx, psy, &         ! 1st moments 
            psxx, psyy, psxy ! 2nd moments
    
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
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: &
            seq_psm, &                      ! area
            seq_ps0, &                      ! field to be advected
            seq_psx, seq_psy, &             ! 1st moments 
            seq_psxx, seq_psyy, seq_psxy    ! 2nd moments
    
        ! Variables to use during executions.
        REAL(wp), DIMENSION(:,:,:), INTENT(out) :: &
            psm, &              ! area
            ps0, &              ! field to be advected
            psx, psy, &         ! 1st moments 
            psxx, psyy, psxy ! 2nd moments

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


    SUBROUTINE adv_x_mock_seq &
            (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, &
             e1e2t, tmask)
        !!------------------------------------------------------------
        !! - Routine: adv_x_mock_seq
        !! - Purpose: Computes and adds the advection trend to sea-ice
        !!                variable on x axis
        !!------------------------------------------------------------
        INTEGER                   , INTENT(in   ) ::   jpi, jpj           ! Dimension of the workspace.
        REAL(wp)                  , INTENT(in   ) ::   pdt                ! the time step
        REAL(wp)                  , INTENT(in   ) ::   pcrh               ! call adv_x then adv_y (=1) or the opposite (=0)
        REAL(wp), DIMENSION(:,:)  , INTENT(in   ) ::   put                ! i-direction ice velocity at U-point [m/s]
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   psm                ! area
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   ps0                ! field to be advected
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   psx , psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   psxx, psyy, psxy   ! 2nd moments
        !! 
        INTEGER  ::   ji, jj, jl, jcat                     ! dummy loop indices
        INTEGER  ::   jjmin, jjmax                         ! dummy loop indices
        REAL(wp) ::   zs1max, zslpmax, ztemp               ! local scalars
        REAL(wp) ::   zs1new, zalf , zalfq , zbt           !   -      -
        REAL(wp) ::   zs2new, zalf1, zalf1q, zbt1          !   -      -
        REAL(wp) ::   zpsm, zps0
        REAL(wp) ::   zpsx, zpsy, zpsxx, zpsyy, zpsxy
        REAL(wp), DIMENSION(jpi,jpj) ::   zf0 , zfx  , zfy   , zbet   ! 2D workspace
        REAL(wp), DIMENSION(jpi,jpj) ::   zfm , zfxx , zfyy  , zfxy   !  -      -
        REAL(wp), DIMENSION(jpi,jpj) ::   zalg, zalg1, zalg1q         !  -      -
        
        REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(in) ::   e1e2t   ! associated metrics at t-point
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) ::   tmask   ! land/ocean mask at T-pts


        ! Local version of used parameters.
        REAL(wp), PARAMETER ::   epsi20 = 1.e-20_wp     ! small number 
        REAL(wp)            ::   rswitch                ! switch for the presence of ice (1) or not (0)
        INTEGER :: jpjm1, fs_2, fs_jpim1                ! optimization and config variables.
#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: adv_x_mock_seq"
#endif
        ! Local version assignment for variables.
        jpjm1 = jpj - 1

        ! Assignments according to vectopt_loop_substitute.h90 in Nemo codebase.
        fs_2 = 2
        fs_jpim1 = jpi - 1

        !-----------------------------------------------------------------------
        !
        ! in order to avoid lbc_lnk (communications):
        !    jj loop must be 1:jpj   if adv_x is called first
        !                and 2:jpj-1 if adv_x is called second
        jjmin = 2     - NINT(pcrh)   ! 1   or 2
        jjmax = jpjm1 + NINT(pcrh)   ! jpj or jpj-1
        !
        jcat = SIZE( ps0 , 3 )   ! size of input arrays
        !
        !
        DO jl = 1, jcat   ! loop on categories
            !
            ! Limitation of moments.                                           
            DO jj = jjmin, jjmax
            
                DO ji = 1, jpi

                    zpsm  = psm (ji,jj,jl) ! optimization
                    zps0  = ps0 (ji,jj,jl)
                    zpsx  = psx (ji,jj,jl)
                    zpsxx = psxx(ji,jj,jl)
                    zpsy  = psy (ji,jj,jl)
                    zpsyy = psyy(ji,jj,jl)
                    zpsxy = psxy(ji,jj,jl)

                    !  Initialize volumes of boxes  (=area if adv_x first called, =psm otherwise)                                     
                    zpsm = MAX( pcrh * e1e2t(ji,jj) + ( 1.0 - pcrh ) * zpsm , epsi20 )
                    !
                    zslpmax = MAX( 0._wp, zps0 )
                    zs1max  = 1.5 * zslpmax
                    zs1new  = MIN( zs1max, MAX( -zs1max, zpsx ) )
                    zs2new  = MIN( 2.0 * zslpmax - 0.3334 * ABS( zs1new ), MAX( ABS( zs1new ) - zslpmax, zpsxx ) )
                    rswitch = ( 1.0 - MAX( 0._wp, SIGN( 1._wp, -zslpmax) ) ) * tmask(ji,jj,1)   ! Case of empty boxes & Apply mask

                    zps0  = zslpmax  
                    zpsx  = zs1new  * rswitch
                    zpsxx = zs2new  * rswitch
                    zpsy  = zpsy    * rswitch
                    zpsyy = zpsyy   * rswitch
                    zpsxy = MIN( zslpmax, MAX( -zslpmax, zpsxy ) ) * rswitch

                    !  Calculate fluxes and moments between boxes i<-->i+1              
                    !                                !  Flux from i to i+1 WHEN u GT 0 
                    zbet(ji,jj)  =  MAX( 0._wp, SIGN( 1._wp, put(ji,jj) ) )
                    zalf         =  MAX( 0._wp, put(ji,jj) ) * pdt / zpsm
                    zalfq        =  zalf * zalf
                    zalf1        =  1.0 - zalf
                    zalf1q       =  zalf1 * zalf1
                    !
                    zfm (ji,jj)  =  zalf  *   zpsm 
                    zf0 (ji,jj)  =  zalf  * ( zps0  + zalf1 * ( zpsx + (zalf1 - zalf) * zpsxx ) )
                    zfx (ji,jj)  =  zalfq * ( zpsx  + 3.0 * zalf1 * zpsxx )
                    zfxx(ji,jj)  =  zalf  *   zpsxx * zalfq
                    zfy (ji,jj)  =  zalf  * ( zpsy  + zalf1 * zpsxy )
                    zfxy(ji,jj)  =  zalfq *   zpsxy
                    zfyy(ji,jj)  =  zalf  *   zpsyy

                    !                                !  Readjust moments remaining in the box.
                    zpsm  =  zpsm  - zfm(ji,jj)
                    zps0  =  zps0  - zf0(ji,jj)
                    zpsx  =  zalf1q * ( zpsx - 3.0 * zalf * zpsxx )
                    zpsxx =  zalf1  * zalf1q * zpsxx
                    zpsy  =  zpsy  - zfy (ji,jj)
                    zpsyy =  zpsyy - zfyy(ji,jj)
                    zpsxy =  zalf1q * zpsxy
                    !
                    psm (ji,jj,jl) = zpsm ! optimization
                    ps0 (ji,jj,jl) = zps0 
                    psx (ji,jj,jl) = zpsx 
                    psxx(ji,jj,jl) = zpsxx
                    psy (ji,jj,jl) = zpsy 
                    psyy(ji,jj,jl) = zpsyy
                    psxy(ji,jj,jl) = zpsxy
                    !
                END DO

                DO ji = 1, fs_jpim1
                    !                                !  Flux from i+1 to i when u LT 0.
                    zalf          = MAX( 0._wp, -put(ji,jj) ) * pdt / psm(ji+1,jj,jl) 
                    zalg  (ji,jj) = zalf
                    zalfq         = zalf * zalf
                    zalf1         = 1.0 - zalf
                    zalg1 (ji,jj) = zalf1
                    zalf1q        = zalf1 * zalf1
                    zalg1q(ji,jj) = zalf1q
                    !
                    zfm   (ji,jj) = zfm (ji,jj) + zalf  *    psm (ji+1,jj,jl)
                    zf0   (ji,jj) = zf0 (ji,jj) + zalf  * (  ps0 (ji+1,jj,jl) &
                        &                                   - zalf1 * ( psx(ji+1,jj,jl) - (zalf1 - zalf ) * psxx(ji+1,jj,jl) ) )
                    zfx   (ji,jj) = zfx (ji,jj) + zalfq * (  psx (ji+1,jj,jl) - 3.0 * zalf1 * psxx(ji+1,jj,jl) )
                    zfxx  (ji,jj) = zfxx(ji,jj) + zalf  *    psxx(ji+1,jj,jl) * zalfq
                    zfy   (ji,jj) = zfy (ji,jj) + zalf  * (  psy (ji+1,jj,jl) - zalf1 * psxy(ji+1,jj,jl) )
                    zfxy  (ji,jj) = zfxy(ji,jj) + zalfq *    psxy(ji+1,jj,jl)
                    zfyy  (ji,jj) = zfyy(ji,jj) + zalf  *    psyy(ji+1,jj,jl)
                END DO

                DO ji = fs_2, fs_jpim1 
                    !
                    zpsm  = psm (ji,jj,jl) ! optimization
                    zps0  = ps0 (ji,jj,jl)
                    zpsx  = psx (ji,jj,jl)
                    zpsxx = psxx(ji,jj,jl)
                    zpsy  = psy (ji,jj,jl)
                    zpsyy = psyy(ji,jj,jl)
                    zpsxy = psxy(ji,jj,jl)
                    !                                !  Readjust moments remaining in the box.
                    zbt  =       zbet(ji-1,jj)
                    zbt1 = 1.0 - zbet(ji-1,jj)
                    !
                    zpsm  = zbt * zpsm + zbt1 * ( zpsm - zfm(ji-1,jj) )
                    zps0  = zbt * zps0 + zbt1 * ( zps0 - zf0(ji-1,jj) )
                    zpsx  = zalg1q(ji-1,jj) * ( zpsx + 3.0 * zalg(ji-1,jj) * zpsxx )
                    zpsxx = zalg1 (ji-1,jj) * zalg1q(ji-1,jj) * zpsxx
                    zpsy  = zbt * zpsy  + zbt1 * ( zpsy  - zfy (ji-1,jj) )
                    zpsyy = zbt * zpsyy + zbt1 * ( zpsyy - zfyy(ji-1,jj) )
                    zpsxy = zalg1q(ji-1,jj) * zpsxy

                    !   Put the temporary moments into appropriate neighboring boxes.    
                    !                                !   Flux from i to i+1 IF u GT 0.
                    zbt   =       zbet(ji-1,jj)
                    zbt1  = 1.0 - zbet(ji-1,jj)
                    zpsm  = zbt * ( zpsm + zfm(ji-1,jj) ) + zbt1 * zpsm
                    zalf  = zbt * zfm(ji-1,jj) / zpsm
                    zalf1 = 1.0 - zalf
                    ztemp = zalf * zps0 - zalf1 * zf0(ji-1,jj)
                    !
                    zps0  =  zbt  * ( zps0 + zf0(ji-1,jj) ) + zbt1 * zps0
                    zpsx  =  zbt  * ( zalf * zfx(ji-1,jj) + zalf1 * zpsx + 3.0 * ztemp ) + zbt1 * zpsx
                    zpsxx =  zbt  * ( zalf * zalf * zfxx(ji-1,jj) + zalf1 * zalf1 * zpsxx                            &
                        &            + 5.0 * ( zalf * zalf1 * ( zpsx  - zfx(ji-1,jj) ) - ( zalf1 - zalf ) * ztemp ) ) &
                        &            + zbt1 * zpsxx
                    zpsxy =  zbt  * ( zalf * zfxy(ji-1,jj) + zalf1 * zpsxy            &
                        &            + 3.0 * (- zalf1*zfy(ji-1,jj)  + zalf * zpsy ) )  &
                        &            + zbt1 * zpsxy
                    zpsy  =  zbt  * ( zpsy  + zfy (ji-1,jj) ) + zbt1 * zpsy 
                    zpsyy =  zbt  * ( zpsyy + zfyy(ji-1,jj) ) + zbt1 * zpsyy

                    !                                !  Flux from i+1 to i IF u LT 0.
                    zbt   =       zbet(ji,jj)
                    zbt1  = 1.0 - zbet(ji,jj)
                    zpsm  = zbt * zpsm + zbt1 * ( zpsm + zfm(ji,jj) )
                    zalf  = zbt1 * zfm(ji,jj) / zpsm
                    zalf1 = 1.0 - zalf
                    ztemp = - zalf * zps0 + zalf1 * zf0(ji,jj)
                    !
                    zps0  = zbt * zps0  + zbt1 * ( zps0 + zf0(ji,jj) )
                    zpsx  = zbt * zpsx  + zbt1 * ( zalf * zfx(ji,jj) + zalf1 * zpsx + 3.0 * ztemp )
                    zpsxx = zbt * zpsxx + zbt1 * ( zalf * zalf * zfxx(ji,jj) + zalf1 * zalf1 * zpsxx &
                        &                         + 5.0 * ( zalf * zalf1 * ( - zpsx + zfx(ji,jj) )    &
                        &                         + ( zalf1 - zalf ) * ztemp ) )
                    zpsxy = zbt * zpsxy + zbt1 * ( zalf * zfxy(ji,jj) + zalf1 * zpsxy  &
                        &                         + 3.0 * ( zalf1 * zfy(ji,jj) - zalf * zpsy ) )
                    zpsy  = zbt * zpsy  + zbt1 * ( zpsy  + zfy (ji,jj) )
                    zpsyy = zbt * zpsyy + zbt1 * ( zpsyy + zfyy(ji,jj) )
                    
                    !
                    psm (ji,jj,jl) = zpsm  ! optimization
                    ps0 (ji,jj,jl) = zps0 
                    psx (ji,jj,jl) = zpsx 
                    psxx(ji,jj,jl) = zpsxx
                    psy (ji,jj,jl) = zpsy 
                    psyy(ji,jj,jl) = zpsyy
                    psxy(ji,jj,jl) = zpsxy
                END DO
            END DO
        END DO

#ifdef DEBUG_ON
    write (*,*) "OUT: adv_x_mock_seq"
    write (*,*) ""
#endif
    END SUBROUTINE adv_x_mock_seq


    SUBROUTINE adv_x_mock_data_beta &
            (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, &
            e1e2t, tmask)
        !!---------------------------------------------------------------------
        !! - Routine: adv_x_mock_data_beta
        !! - Purpose: Parallelized version from the adv_x_mock_data_beta branch
        !! - Source: https://earth.bsc.es/gitlab/amedvede/nemogcm_v40/-/blob/864baa76200868d06e129e1dff0f2ebb69b4424a/src/ICE/icedyn_adv_pra.F90
        !!---------------------------------------------------------------------
        INTEGER                   , INTENT(in   ) ::   jpi, jpj           ! Dimension of the workspace.
        REAL(wp)                  , INTENT(in   ) ::   pdt                ! the time step
        REAL(wp)                  , INTENT(in   ) ::   pcrh               ! call adv_x then adv_y (=1) or the opposite (=0)
        REAL(wp), DIMENSION(:,:)  , INTENT(in   ) ::   put                ! i-direction ice velocity at U-point [m/s]
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   psm                ! area
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   ps0                ! field to be advected
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   psx , psy          ! 1st moments 
        REAL(wp), DIMENSION(:,:,:), INTENT(inout) ::   psxx, psyy, psxy   ! 2nd moments
        !! 
        INTEGER  ::   ji, jj, jl, jcat                     ! dummy loop indices
        INTEGER  ::   jjmin, jjmax                         ! dummy loop indices
        REAL(wp) ::   zs1max, zslpmax, ztemp               ! local scalars
        REAL(wp) ::   zs1new, zalf , zalfq , zbt           !   -      -
        REAL(wp) ::   zs2new, zalf1, zalf1q, zbt1          !   -      -
        REAL(wp) ::   zpsm, zps0
        REAL(wp) ::   zpsx, zpsy, zpsxx, zpsyy, zpsxy
        REAL(wp), DIMENSION(jpi,jpj) ::   zf0 , zfx  , zfy   , zbet   ! 2D workspace
        REAL(wp), DIMENSION(jpi,jpj) ::   zfm , zfxx , zfyy  , zfxy   !  -      -
        REAL(wp), DIMENSION(jpi,jpj) ::   zalg, zalg1, zalg1q         !  -      -
        
        REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(in) ::   e1e2t   ! associated metrics at t-point
        REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) ::   tmask   ! land/ocean mask at T-pts


        ! Local version of used parameters.
        REAL(wp), PARAMETER ::   epsi20 = 1.e-20_wp     ! small number 
        REAL(wp)            ::   rswitch                ! switch for the presence of ice (1) or not (0)
        INTEGER :: jpjm1, fs_2, fs_jpim1                ! optimization and config variables.
#ifdef DEBUG_ON
    write (*,*) ""
    write (*,*) "IN: adv_x_mock_data_beta"
#endif
        ! Local version assignment for variables.
        jpjm1 = jpj - 1

        ! Assignments according to vectopt_loop_substitute.h90 in Nemo codebase.
        fs_2 = 2
        fs_jpim1 = jpi - 1

        !-----------------------------------------------------------------------
        !
        ! in order to avoid lbc_lnk (communications):
        !    jj loop must be 1:jpj   if adv_x is called first
        !                and 2:jpj-1 if adv_x is called second
        jjmin = 2     - NINT(pcrh)   ! 1   or 2
        jjmax = jpjm1 + NINT(pcrh)   ! jpj or jpj-1
        !
        jcat = SIZE( ps0 , 3 )   ! size of input arrays
        !
        !$omp target data map(alloc:zf0,zfx,zfy,zbet,zfm,zfxx,zfyy,zfxy,zalg,zalg1,zalg1q)&
        !$omp& map(to:e1e2t,tmask,put) map(tofrom:psm,ps0,psx,psy,psxx,psyy,psxy)
        !
        DO jl = 1, jcat   ! loop on categories
            !
            ! Limitation of moments.     
            !$omp target teams distribute                                       
            DO jj = jjmin, jjmax
            
                !$omp parallel do simd private(zs1max,zslpmax,zs1new,zalf,zalfq,&
                !$omp& zs2new,zalf1,zalf1q,zpsm,zps0,zpsx,zpsy,zpsxx,zpsyy,zpsxy,rswitch)
                DO ji = 1, jpi

                    zpsm  = psm (ji,jj,jl) ! optimization
                    zps0  = ps0 (ji,jj,jl)
                    zpsx  = psx (ji,jj,jl)
                    zpsxx = psxx(ji,jj,jl)
                    zpsy  = psy (ji,jj,jl)
                    zpsyy = psyy(ji,jj,jl)
                    zpsxy = psxy(ji,jj,jl)

                    !  Initialize volumes of boxes  (=area if adv_x first called, =psm otherwise)                                     
                    zpsm = MAX( pcrh * e1e2t(ji,jj) + ( 1.0 - pcrh ) * zpsm , epsi20 )
                    !
                    zslpmax = MAX( 0._wp, zps0 )
                    zs1max  = 1.5 * zslpmax
                    zs1new  = MIN( zs1max, MAX( -zs1max, zpsx ) )
                    zs2new  = MIN( 2.0 * zslpmax - 0.3334 * ABS( zs1new ), MAX( ABS( zs1new ) - zslpmax, zpsxx ) )
                    rswitch = ( 1.0 - MAX( 0._wp, SIGN( 1._wp, -zslpmax) ) ) * tmask(ji,jj,1)   ! Case of empty boxes & Apply mask

                    zps0  = zslpmax  
                    zpsx  = zs1new  * rswitch
                    zpsxx = zs2new  * rswitch
                    zpsy  = zpsy    * rswitch
                    zpsyy = zpsyy   * rswitch
                    zpsxy = MIN( zslpmax, MAX( -zslpmax, zpsxy ) ) * rswitch

                    !  Calculate fluxes and moments between boxes i<-->i+1              
                    !                                !  Flux from i to i+1 WHEN u GT 0 
                    zbet(ji,jj)  =  MAX( 0._wp, SIGN( 1._wp, put(ji,jj) ) )
                    zalf         =  MAX( 0._wp, put(ji,jj) ) * pdt / zpsm
                    zalfq        =  zalf * zalf
                    zalf1        =  1.0 - zalf
                    zalf1q       =  zalf1 * zalf1
                    !
                    zfm (ji,jj)  =  zalf  *   zpsm 
                    zf0 (ji,jj)  =  zalf  * ( zps0  + zalf1 * ( zpsx + (zalf1 - zalf) * zpsxx ) )
                    zfx (ji,jj)  =  zalfq * ( zpsx  + 3.0 * zalf1 * zpsxx )
                    zfxx(ji,jj)  =  zalf  *   zpsxx * zalfq
                    zfy (ji,jj)  =  zalf  * ( zpsy  + zalf1 * zpsxy )
                    zfxy(ji,jj)  =  zalfq *   zpsxy
                    zfyy(ji,jj)  =  zalf  *   zpsyy

                    !                                !  Readjust moments remaining in the box.
                    zpsm  =  zpsm  - zfm(ji,jj)
                    zps0  =  zps0  - zf0(ji,jj)
                    zpsx  =  zalf1q * ( zpsx - 3.0 * zalf * zpsxx )
                    zpsxx =  zalf1  * zalf1q * zpsxx
                    zpsy  =  zpsy  - zfy (ji,jj)
                    zpsyy =  zpsyy - zfyy(ji,jj)
                    zpsxy =  zalf1q * zpsxy
                    !
                    psm (ji,jj,jl) = zpsm ! optimization
                    ps0 (ji,jj,jl) = zps0 
                    psx (ji,jj,jl) = zpsx 
                    psxx(ji,jj,jl) = zpsxx
                    psy (ji,jj,jl) = zpsy 
                    psyy(ji,jj,jl) = zpsyy
                    psxy(ji,jj,jl) = zpsxy
                    !
                END DO
                !$omp end parallel do simd

                !$omp parallel do simd private(zalf,zalfq,zalf1,zalf1q)
                DO ji = 1, fs_jpim1
                    !                                !  Flux from i+1 to i when u LT 0.
                    zalf          = MAX( 0._wp, -put(ji,jj) ) * pdt / psm(ji+1,jj,jl) 
                    zalg  (ji,jj) = zalf
                    zalfq         = zalf * zalf
                    zalf1         = 1.0 - zalf
                    zalg1 (ji,jj) = zalf1
                    zalf1q        = zalf1 * zalf1
                    zalg1q(ji,jj) = zalf1q
                    !
                    zfm   (ji,jj) = zfm (ji,jj) + zalf  *    psm (ji+1,jj,jl)
                    zf0   (ji,jj) = zf0 (ji,jj) + zalf  * (  ps0 (ji+1,jj,jl) &
                        &                                   - zalf1 * ( psx(ji+1,jj,jl) - (zalf1 - zalf ) * psxx(ji+1,jj,jl) ) )
                    zfx   (ji,jj) = zfx (ji,jj) + zalfq * (  psx (ji+1,jj,jl) - 3.0 * zalf1 * psxx(ji+1,jj,jl) )
                    zfxx  (ji,jj) = zfxx(ji,jj) + zalf  *    psxx(ji+1,jj,jl) * zalfq
                    zfy   (ji,jj) = zfy (ji,jj) + zalf  * (  psy (ji+1,jj,jl) - zalf1 * psxy(ji+1,jj,jl) )
                    zfxy  (ji,jj) = zfxy(ji,jj) + zalfq *    psxy(ji+1,jj,jl)
                    zfyy  (ji,jj) = zfyy(ji,jj) + zalf  *    psyy(ji+1,jj,jl)
                END DO
                !$omp end parallel do simd

                !$omp parallel do simd private(ztemp,zalf,zbt,zs2new,zalf1,&
                !$omp& zalf1q,zbt1,zpsm,zps0,zpsx,zpsy,zpsxx,zpsyy,zpsxy,rswitch)
                DO ji = fs_2, fs_jpim1 
                    !
                    zpsm  = psm (ji,jj,jl) ! optimization
                    zps0  = ps0 (ji,jj,jl)
                    zpsx  = psx (ji,jj,jl)
                    zpsxx = psxx(ji,jj,jl)
                    zpsy  = psy (ji,jj,jl)
                    zpsyy = psyy(ji,jj,jl)
                    zpsxy = psxy(ji,jj,jl)
                    !                                !  Readjust moments remaining in the box.
                    zbt  =       zbet(ji-1,jj)
                    zbt1 = 1.0 - zbet(ji-1,jj)
                    !
                    zpsm  = zbt * zpsm + zbt1 * ( zpsm - zfm(ji-1,jj) )
                    zps0  = zbt * zps0 + zbt1 * ( zps0 - zf0(ji-1,jj) )
                    zpsx  = zalg1q(ji-1,jj) * ( zpsx + 3.0 * zalg(ji-1,jj) * zpsxx )
                    zpsxx = zalg1 (ji-1,jj) * zalg1q(ji-1,jj) * zpsxx
                    zpsy  = zbt * zpsy  + zbt1 * ( zpsy  - zfy (ji-1,jj) )
                    zpsyy = zbt * zpsyy + zbt1 * ( zpsyy - zfyy(ji-1,jj) )
                    zpsxy = zalg1q(ji-1,jj) * zpsxy

                    !   Put the temporary moments into appropriate neighboring boxes.    
                    !                                !   Flux from i to i+1 IF u GT 0.
                    zbt   =       zbet(ji-1,jj)
                    zbt1  = 1.0 - zbet(ji-1,jj)
                    zpsm  = zbt * ( zpsm + zfm(ji-1,jj) ) + zbt1 * zpsm
                    zalf  = zbt * zfm(ji-1,jj) / zpsm
                    zalf1 = 1.0 - zalf
                    ztemp = zalf * zps0 - zalf1 * zf0(ji-1,jj)
                    !
                    zps0  =  zbt  * ( zps0 + zf0(ji-1,jj) ) + zbt1 * zps0
                    zpsx  =  zbt  * ( zalf * zfx(ji-1,jj) + zalf1 * zpsx + 3.0 * ztemp ) + zbt1 * zpsx
                    zpsxx =  zbt  * ( zalf * zalf * zfxx(ji-1,jj) + zalf1 * zalf1 * zpsxx                            &
                        &            + 5.0 * ( zalf * zalf1 * ( zpsx  - zfx(ji-1,jj) ) - ( zalf1 - zalf ) * ztemp ) ) &
                        &            + zbt1 * zpsxx
                    zpsxy =  zbt  * ( zalf * zfxy(ji-1,jj) + zalf1 * zpsxy            &
                        &            + 3.0 * (- zalf1*zfy(ji-1,jj)  + zalf * zpsy ) )  &
                        &            + zbt1 * zpsxy
                    zpsy  =  zbt  * ( zpsy  + zfy (ji-1,jj) ) + zbt1 * zpsy 
                    zpsyy =  zbt  * ( zpsyy + zfyy(ji-1,jj) ) + zbt1 * zpsyy

                    !                                !  Flux from i+1 to i IF u LT 0.
                    zbt   =       zbet(ji,jj)
                    zbt1  = 1.0 - zbet(ji,jj)
                    zpsm  = zbt * zpsm + zbt1 * ( zpsm + zfm(ji,jj) )
                    zalf  = zbt1 * zfm(ji,jj) / zpsm
                    zalf1 = 1.0 - zalf
                    ztemp = - zalf * zps0 + zalf1 * zf0(ji,jj)
                    !
                    zps0  = zbt * zps0  + zbt1 * ( zps0 + zf0(ji,jj) )
                    zpsx  = zbt * zpsx  + zbt1 * ( zalf * zfx(ji,jj) + zalf1 * zpsx + 3.0 * ztemp )
                    zpsxx = zbt * zpsxx + zbt1 * ( zalf * zalf * zfxx(ji,jj) + zalf1 * zalf1 * zpsxx &
                        &                         + 5.0 * ( zalf * zalf1 * ( - zpsx + zfx(ji,jj) )    &
                        &                         + ( zalf1 - zalf ) * ztemp ) )
                    zpsxy = zbt * zpsxy + zbt1 * ( zalf * zfxy(ji,jj) + zalf1 * zpsxy  &
                        &                         + 3.0 * ( zalf1 * zfy(ji,jj) - zalf * zpsy ) )
                    zpsy  = zbt * zpsy  + zbt1 * ( zpsy  + zfy (ji,jj) )
                    zpsyy = zbt * zpsyy + zbt1 * ( zpsyy + zfyy(ji,jj) )
                    
                    !
                    psm (ji,jj,jl) = zpsm  ! optimization
                    ps0 (ji,jj,jl) = zps0 
                    psx (ji,jj,jl) = zpsx 
                    psxx(ji,jj,jl) = zpsxx
                    psy (ji,jj,jl) = zpsy 
                    psyy(ji,jj,jl) = zpsyy
                    psxy(ji,jj,jl) = zpsxy
                END DO
                !$omp end parallel do simd 
            END DO
            !$omp end target teams distribute
        END DO
        !$omp end target data

#ifdef DEBUG_ON
    write (*,*) "OUT: adv_x_mock_data_beta"
    write (*,*) ""
#endif
    END SUBROUTINE adv_x_mock_data_beta

END MODULE Nemo_Adv_X_Mocks


program Nemo_Adv_X

    use Nemo_Adv_X_Mocks
    use omp_lib

    IMPLICIT none

    INTEGER :: &
        dim, &      ! Dimension of the arrays.
        jpi, jpj    ! Dimensions of the workspaces.

    REAL(wp) :: &
        pdt, &      ! The time step
        pcrh        ! Call adv_x then adv_y (=1) or the opposite (=0)
    
    REAL(wp), DIMENSION(:,:), ALLOCATABLE :: &
        put, &      ! i-direction ice velocity at U-point [m/s]
        e1e2t       ! associated metrics at t-point
    
    ! Allocate arrays used for the initial values.
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: &
        init_psm, &                         ! area
        init_ps0, &                         ! field to be advected
        init_psx, init_psy, &               ! 1st moments 
        init_psxx, init_psyy, init_psxy     ! 2nd moments

    ! Allocate arrays used for the sequential results.
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: &
        seq_psm, &                      ! area
        seq_ps0, &                      ! field to be advected
        seq_psx, seq_psy, &             ! 1st moments 
        seq_psxx, seq_psyy, seq_psxy    ! 2nd moments

    ! Allocate arrays used for execution results.
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE :: &
        psm, &              ! area
        ps0, &              ! field to be advected
        psx, psy, &         ! 1st moments 
        psxx, psyy, psxy, & ! 2nd moments
        tmask               ! land/ocean mask at T-pts

    ! Validation boolean.
    LOGICAL :: validation

    ! Used for timing executions.
    REAL(wp) :: &
        time_start, &   ! Registers start time.
        time_exec, &    ! Registers end time - start time.
        time_seq        ! Stores sequential time.


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

    ! Print sequential results.
    call print_results_adv_x &
            ("sequential", .true., time_seq, 1.0_wp)

#ifdef DEBUG_ON
    ! Print matrices to test repeatability.
    write (*,*) "main_program: after adv_x_mock_seq"
    call print_real_3d_matrix(seq_ps0, "seq_ps0")
#endif

    !------------------------!
    !  Call data_beta code.  !
    !------------------------!
    time_start = omp_get_wtime()
    call adv_x_mock_data_beta &
            (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, &
            e1e2t, tmask)
    time_exec = omp_get_wtime() - time_start

    ! Validate results.
    call validate_results_adv_x &
        (seq_psm, seq_ps0, seq_psx, seq_psxx, seq_psy, seq_psyy, &
         seq_psxy, psm, ps0, psx, psxx, psy, psyy, psxy, &
         validation)

    ! Print results.
    call print_results_adv_x &
        ("data_beta", validation, time_exec, time_seq / time_exec)

    ! Reset variables for next execution.
    call reset_adv_x &
        (init_psm, init_ps0, init_psx, init_psxx, init_psy, init_psyy, &
         init_psxy, psm, ps0, psx, psxx, psy, psyy, psxy)

#ifdef DEBUG_ON
    write (*,*) "OUT: main_program."
    write (*,*) ""
#endif

end program Nemo_Adv_X
