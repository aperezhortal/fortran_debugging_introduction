module mod_two
    implicit none
contains
    subroutine two(a,b,c,d)
        use mod_three
		implicit none
		REAL,INTENT(IN) :: a,b,c
		REAL,INTENT(OUT) :: d
        call three(a,b,c,d)
    end subroutine two
end module mod_two
