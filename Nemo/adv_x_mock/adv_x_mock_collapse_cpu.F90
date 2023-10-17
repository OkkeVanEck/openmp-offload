! Implements the collapse_cpu version of adv_x_mock based on adv_x_mock.F90.

MODULE Nemo_Adv_X_Collapse_CPU

    use omp_lib 

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    implicit none 
  
    public :: adv_x_mock_collapse_cpu

contains

    SUBROUTINE adv_x_mock_collapse_cpu &
        (jpi, jpj, pdt, put, pcrh, psm, ps0, psx, psxx, psy , psyy, psxy, &
        e1e2t, tmask)
    !!---------------------------------------------------------------------
    !! - Routine: adv_x_mock_collapse_cpu
    !! - Purpose: CPU version using our custom collapse computation.
    !!---------------------------------------------------------------------
    INTEGER                   , INTENT(in) :: jpi, jpj           ! Dimension of the workspace.
    REAL(wp)                  , INTENT(in) :: pdt                ! the time step
    REAL(wp)                  , INTENT(in) :: pcrh               ! call adv_x then adv_y (=1) or the opposite (=0)
    REAL(wp), DIMENSION(:,:)  , INTENT(in) :: put                ! i-direction ice velocity at U-point [m/s]
    REAL(wp), DIMENSION(:,:)  , ALLOCATABLE, INTENT(in) :: e1e2t              ! associated metrics at t-point
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(in) :: tmask              ! land/ocean mask at T-pts
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: psm                ! area
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: ps0                ! field to be advected
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: psx , psy          ! 1st moments 
    REAL(wp), DIMENSION(:,:,:), ALLOCATABLE, INTENT(inout) :: psxx, psyy, psxy   ! 2nd moments
    !! 
    INTEGER  ::   ji, jj, jl, jcat, nn                 ! dummy loop indices
    INTEGER  ::   jjmin, jjmax                         ! dummy loop indices
    REAL(wp) ::   zs1max, zslpmax, ztemp               ! local scalars
    REAL(wp) ::   zs1new, zalf , zalfq , zbt           !   -      -
    REAL(wp) ::   zs2new, zalf1, zalf1q, zbt1          !   -      -
    REAL(wp) ::   zpsm, zps0
    REAL(wp) ::   zpsx, zpsy, zpsxx, zpsyy, zpsxy
    REAL(wp), DIMENSION(jpi,jpj) ::   zf0 , zfx  , zfy   , zbet   ! 2D workspace
    REAL(wp), DIMENSION(jpi,jpj) ::   zfm , zfxx , zfyy  , zfxy   !  -      -
    REAL(wp), DIMENSION(jpi,jpj) ::   zalg, zalg1, zalg1q         !  -      -

    ! Local version of used parameters.
    REAL(wp), PARAMETER ::   epsi20 = 1.e-20_wp     ! small number 
    REAL(wp)            ::   rswitch                ! switch for the presence of ice (1) or not (0)
    INTEGER :: jpjm1, fs_2, fs_jpim1                ! optimization and config variables.

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
    !$omp parallel private(ji,jj,jl,zs1max,zslpmax,ztemp,zs1new,zalf,zalfq,zbt,&
    !$omp& zs2new,zalf1,zalf1q,zbt1,zpsm,zps0,zpsx,zpsy,zpsxx,zpsyy,zpsxy,rswitch)
    DO nn = 1, (jcat * (jjmax - jjmin + 1)) ! loop on categories and limitation of moments
        jl = 1 + (nn - 1) / (jjmax - jjmin + 1)
        jj = jjmin + MOD(nn - 1, jjmax - jjmin + 1)

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
    !$omp end parallel

    END SUBROUTINE adv_x_mock_collapse_cpu

END MODULE Nemo_Adv_X_Collapse_CPU
