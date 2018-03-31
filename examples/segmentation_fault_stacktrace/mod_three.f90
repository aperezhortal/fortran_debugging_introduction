module mod_three
    implicit none
contains
    subroutine three()
    implicit none
	  INTEGER :: J
	  REAL, ALLOCATABLE :: M (:)

	  DO J=1, 10
		M(J)=4
	  END DO

    end subroutine three
end module mod_three
