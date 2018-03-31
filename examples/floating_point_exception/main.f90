program main
    use mod_one
    implicit none
	REAL :: a,b,c, d
	write(*,*) "Type 3 numbers"
	read(*,*) a,b,c
    call one(a,b,c,d)
	write(*,*) "a/(b-c) = ",d

end program main
