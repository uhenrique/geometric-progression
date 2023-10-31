program geometric_progression
    !
    !   Purpose:
    !       This program calculate a  sequence of non-zero numbers where each term 
    !       after the first is found by multiplying the previous one by a fixed 
    !       non-zero number called the common ratio.
    !   
    !   Record of revisions:
    !       Date        Programmer      Description of change
    !       ====        ==========      =====================
    !       27/10/2023  Ulissis         Original code
    !       30/10/2023  Ulissis         Translated to english, and formatted
    !
    implicit none
    
    integer :: i, n ! i: count, n: number of terms
    real :: a, r ! a: first term, r: ratio

    ! Read of the input data
    print *, 'Calculator of Geometric Progression'
    write(*,'(a)', advance='no') 'Enter the first term (a): '
    read(*,*) a
    write(*,'(a)', advance='no') 'Enter the ratio (r): '
    read(*,*) r
    write(*,'(a)', advance='no') 'Enter the number of terms (n): '
    read(*,*) n

    if ( n <= 1 ) then ! Verify if n is greater than 0, if not, stop the program
        write(*,*) 'The number of terms must be greater than 1!'
        stop
    end if 

    write(*,100) n

    100 format('The ', i0, ' first terms of the geometric progression are: ')

    do i = 1, n ! Repeat n times the following block

        write(*,101)  i, a
        101 format(i0, ' term : ', f0.5)

        a = a * r ! Calculate the next term
        
    end do

end program geometric_progression