MODULE externalModule

    IMPLICIT NONE

CONTAINS

    REAL FUNCTION rectagleArea( side_a_length , side_b_length )
        IMPLICIT NONE
        REAL, INTENT(IN) :: side_a_length
        REAL, INTENT(IN) :: side_b_length

        rectagleArea=side_a_length*side_b_length
    END FUNCTION

END MODULE externalModule
