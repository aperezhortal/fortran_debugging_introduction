program compute_factorial
  implicit none 
  integer :: number, i
  write(*,*) "Type a positive integer number:"
  read (*,*) number
  write(*,*) "factorial:", factorial(number)

  contains
  integer function factorial(n)
    integer, intent(in) :: n
    integer :: i
!     factorial = 1
    if (n < 0) error stop 'Only positive integers supported'
    do i = 2, n
      factorial = factorial * i
    enddo
  end function factorial
end program compute_factorial