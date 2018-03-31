!---------------------------------------------------------------------
!
!  Example of compilation errors
!
!---------------------------------------------------------------------


PROGRAM typeMismatchError
    IMPLICIT NONE
    REAL(8) :: rectagleArea
    INTEGER :: side_a_length
    INTEGER :: side_b_length
    REAL :: myArea

    side_a_length = 2
    side_b_length = 4
    myArea = rectagleArea( side_a_length , side_b_length)
    PRINT *, myArea

END PROGRAM

REAL(8) FUNCTION rectagleArea( side_a_length , side_b_length )
    IMPLICIT NONE
    REAL(8), INTENT(IN) :: side_a_length
    REAL(8), INTENT(IN) :: side_b_length

    rectagleArea=side_a_length*side_b_length

END FUNCTION
