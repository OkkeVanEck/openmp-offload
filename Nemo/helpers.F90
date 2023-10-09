MODULE Nemo_Helpers

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    implicit none

    public :: &
        print_real_2d_matrix, &
        print_real_3d_matrix

contains

    SUBROUTINE print_real_2d_matrix(matrix, matrix_name)
        !!--------------------------------------------------
        !! - Routine: print_real_2d_matrix
        !! - Purpose: Print real 2D matrix of any dimension.
        !!--------------------------------------------------
        REAL(wp), DIMENSION(:,:), INTENT(in) :: matrix
        CHARACTER(len=*) :: matrix_name
        INTEGER :: ni, nj
        
        ! Pretty print matrix to screen.
        write (*,*) matrix_name, ":"
        DO ni = 1,SIZE(matrix,1)
            DO nj = 1, SIZE(matrix, 2)
                write (*, "(f7.2)", advance="no") matrix(ni, nj)
            END DO    
            
            write(*,*) ""
        END DO
    END SUBROUTINE print_real_2d_matrix


    SUBROUTINE print_real_3d_matrix(matrix, matrix_name)
        !!--------------------------------------------------
        !! - Routine: print_real_3d_matrix
        !! - Purpose: Print real 3D matrix of any dimension.
        !!--------------------------------------------------
        REAL(wp), DIMENSION(:,:,:), INTENT(in) :: matrix
        CHARACTER(len=*) :: matrix_name
        INTEGER :: ni, nj, nk
        
        ! Pretty print matrix to screen.
        write (*,*) matrix_name, ":"
        DO ni = 1,SIZE(matrix,1)
            DO nj = 1, SIZE(matrix, 2)
                DO nk = 1, SIZE(matrix, 3)
                    write (*, "(f7.2)", advance="no") matrix(ni, nj, nk)
                END DO

                write (*,*) ""
            END DO    
            
            write(*,*) ""
        END DO
    END SUBROUTINE print_real_3d_matrix

END MODULE Nemo_Helpers