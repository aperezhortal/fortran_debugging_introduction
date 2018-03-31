 ! This is visible from outside the module (PUBLIC)
	REAL FUNCTION rectagle_area(width, height)

	  REAL, INTENT(IN) :: width, height
	  REAL :: my_area
	  
	  rectagle_area = width*height

	END FUNCTION