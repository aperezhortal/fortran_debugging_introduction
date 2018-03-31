module mod_two
    implicit none
contains
    subroutine two()
        use mod_three
        implicit none
        call three()
    end subroutine two
end module mod_two
