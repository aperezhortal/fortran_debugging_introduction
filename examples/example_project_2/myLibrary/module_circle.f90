MODULE module_circle

    IMPLICIT NONE
    REAL, PARAMETER :: PI = 3.1415926

CONTAINS

    REAL FUNCTION circle_area( radius )
        IMPLICIT NONE
        REAL, INTENT(IN) :: radius

        circle_area=PI*(radius**2)
    END FUNCTION

    REAL FUNCTION circle_perimeter( radius )
        IMPLICIT NONE
        REAL, INTENT(IN) :: radius

        circle_perimeter=2*PI*radius
    END FUNCTION


END MODULE module_circle

