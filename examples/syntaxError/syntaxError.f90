!---------------------------------------------------------------------
!
!  Example of syntax errors
!
!---------------------------------------------------------------------


program syntaxErrors

    IMPLICIT NONE

    INTEGER :: myInput

    ! Ask for a input value
    write(*, '(A)', ADVANCE = "NO") "Enter a integer value:  "
    read(*,*) myInput  ! This variable name is not the correct one!

    IF myInput < 0 THEN   ! "IF (myInput < 0 ) THEN" is the correct syntax!
        write(*, *) "The input value negative"
    ELSE
        write(*, *) "The input value positive"
    END IF

end program syntaxErrors
