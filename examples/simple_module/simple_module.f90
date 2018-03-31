MODULE simple_module

    IMPLICIT NONE
    Private multiply

	CONTAINS

    ! This is only visible inside the module (PRIVATE)
	REAL FUNCTION multiply(a, b)
	  REAL, INTENT(IN) :: a, b
	  multiply = a*b
	END FUNCTION 

    ! This is visible from outside the module (PUBLIC)
	REAL FUNCTION volume(width, height, depth)

 	  REAL :: rectagle_area !external function!
	  REAL, INTENT(IN) :: width, height, depth
	  REAL :: my_area
	  
	  my_area = rectagle_area(width ,height )

	  volume = multiply(my_area, depth)

	END FUNCTION

END MODULE simple_module


