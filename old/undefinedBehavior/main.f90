
program undefined_behavior
    implicit none
    integer :: i

    real,dimension(10) :: one_array
    real,dimension(10) :: other_array

    write(*,*) "one_array:    Initial Loc:",loc(one_array), "Final Loc:",loc(one_array)+SIZEOF(one_array)-4
    write(*,*) "other_array:  Initial Loc:",loc(other_array), "Final Loc:",loc(other_array)+SIZEOF(other_array)-4

    one_array(:)=1
    do i = 1,15
        other_array(i)=10
        write(*,*) "Writing 1 at ",loc(other_array(i))
    enddo

    do i = 1,15
        write(*,*) i, loc(one_array(i)), one_array(i)
    enddo


end program
