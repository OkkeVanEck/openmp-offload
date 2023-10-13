MODULE Nemo_Helpers

    ! Set the working-precision to double precision.
    use, intrinsic :: iso_fortran_env, wp=>real64

    implicit none

    public :: &
        print_real_2d_matrix, &
        print_real_3d_matrix, &
        matrix_equality_real, &
        matrix_diff_real, &
        convert_logical

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


    LOGICAL FUNCTION matrix_equality_real(m1, m2) result(equals)
        !!---------------------------------------------------------------------
        !! - Routine: matrix_equality_real
        !! - Purpose: Set 'equal' according to matrix equality using tolerance.
        !!---------------------------------------------------------------------
        REAL(wp), DIMENSION(:,:,:), INTENT(in)  :: m1, m2

        IF (ANY((abs(m1-m2) > epsilon(m1(1,1,1))))) THEN
            equals = .false.
        ELSE
            equals = .true.
        END IF
    END FUNCTION matrix_equality_real


    REAL(wp) FUNCTION matrix_diff_real(m1, m2) result(diff)
        !!-------------------------------------------------------
        !! - Routine: matrix_diff_real
        !! - Purpose: Set 'diff' according to matrix differences.
        !!-------------------------------------------------------
        REAL(wp), DIMENSION(:,:,:), INTENT(in)  :: m1, m2
        diff = maxval(abs((m1 - m2) / m2))
    END FUNCTION matrix_diff_real


    CHARACTER(7) FUNCTION convert_logical(value) result(string_value)
        !!------------------------------------------------------
        !! - Routine: convert_logical
        !! - Purpose: Converts a logical value to string format.
        !!------------------------------------------------------
        LOGICAL, INTENT(in) :: value
        IF (value) THEN
            string_value = "PASSED"
        ELSE
            string_value = "FAILED"
        END IF
    END FUNCTION convert_logical

END MODULE Nemo_Helpers