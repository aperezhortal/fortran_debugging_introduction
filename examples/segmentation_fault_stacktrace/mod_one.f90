module mod_one
    implicit none
contains
    subroutine one()
        use mod_two
        implicit none
        call two()
    end subroutine one
end module mod_one
