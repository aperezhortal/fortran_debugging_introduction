MODULE module_rectangle

    IMPLICIT NONE

CONTAINS

    REAL FUNCTION rectagle_area( side_a_length , side_b_length )
        IMPLICIT NONE
        REAL, INTENT(IN) :: side_a_length
        REAL, INTENT(IN) :: side_b_length

        rectagle_area=side_a_length*side_b_length
    END FUNCTION

    REAL FUNCTION rectagle_perimeter( side_a_length , side_b_length )
        IMPLICIT NONE
        REAL, INTENT(IN) :: side_a_length
        REAL, INTENT(IN) :: side_b_length

        rectagle_perimeter=2*side_a_length+2*side_b_length
    END FUNCTION


END MODULE module_rectangle
