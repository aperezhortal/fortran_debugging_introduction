program segmentation_fault
implicit none
integer :: i

real,dimension(4) :: one_array
write(*,*) "one_array elements: From",loc(one_array),"to",loc(one_array)+4*9
write(*,*) "i location relative to one_array(0):", loc(i)-loc(one_array)
write(*,*)

write(*,*) '                              index          memory address'
do i = 1,10
    write(*,*) 'Writing "10" for index',i, "  at",loc(one_array(i))-loc(one_array)
    one_array(i)=10
enddo
end program
