module mod_one
    implicit none
contains
    subroutine one(a,b,c,d)
        use mod_two
        implicit none
		REAL,INTENT(IN) :: a,b,c
		REAL,INTENT(OUT) :: d

        call two(a,b,c,d)

    end subroutine one
end module mod_one
