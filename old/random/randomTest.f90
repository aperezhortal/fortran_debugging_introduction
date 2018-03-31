
program randomTest

use iso_fortran_env, only: int64
implicit none
integer, allocatable :: seed(:)

integer my_size
REAL :: r(5,5)
integer :: my_date_time(8) , i
integer(int64) :: my_time_clock
integer :: lcg

! Get a random
!Here the seed is a rank 1 array of size at least n where n (processor-dependent) and it's size is given by call random_seed(size=mySize)
! Get the size of the seed that the compiler is expecting
call random_seed(size=my_size)

! Allocate the seed
allocate(seed(my_size))

! Now we need to set a random value to the seed!!!
! This is the difficult part

call system_clock(my_time_clock)
if (my_time_clock == 0) then
  call date_and_time(values=my_date_time)
  my_time_clock = (my_date_time(1) - 1970) * 365_int64 * 24 * 60 * 60 * 1000 &
                + my_date_time(2) * 31_int64 * 24 * 60 * 60 * 1000 &
       + my_date_time(3) * 24_int64 * 60 * 60 * 1000 &
       + my_date_time(5) * 60 * 60 * 1000 &
       + my_date_time(6) * 60 * 1000 + my_date_time(7) * 1000 &
       + my_date_time(8)
end if


! We need to set an integer value to each element of the size vector
do i = 1, my_size
    seed(i) = lcg(my_time_clock)
end do

! Now that we have  thee seed, we set it to the random number generator
call random_seed(put=seed)


CALL RANDOM_NUMBER(r)

write(*,*) r
end program

! This simple PRNG might not be good enough for real work, but is
! sufficient for seeding a better PRNG.
function lcg(s)
    use iso_fortran_env, only: int64
    implicit none
    integer :: lcg
    integer(int64) :: s
    if (s == 0) then
     s = 104729
    else
     s = mod(s, 4294967296_int64)
    end if
    s = mod(s * 279470273_int64, 4294967291_int64)
    lcg = int(mod(s, int(huge(0), int64)), kind(0))
end function lcg


