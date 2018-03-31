module mod_three
    implicit none
contains
    subroutine three(a,b,c,d)
    implicit none
	  REAL,INTENT(IN) :: a,b,c
	  REAL,INTENT(OUT) :: d
	  
	  d = a/(b-c)

    end subroutine three
end module mod_three
