program progressao_geometrica
    
    implicit none
    
    integer :: i, n ! i: contador, n: numero de termos
    real :: a, r ! a: primeiro termo, r: razao

    ! Leitura dos dados
    print *, 'Calculadora de Progressao Geometrica'
    print *, 'Digite o primeiro termo (a): '
    read(*,*) a
    print *, 'Digite a razao (r): '
    read(*,*) r
    print *, 'Digite o numero de termos (n): '
    read(*,*) n

    if ( n <= 1 ) then ! Verifica se n é maior que 0, se não for, o programa para
        write(*,*) 'O numero de termos deve ser maior que 0.'
        stop
    end if 

    write(*,*) 'Os ', n, ' primeiros termos da Progressao Geometrica sao: '

    do i = 1, n ! Repete n vezes o bloco de comandos abaixo
        write(*,*) 'Termo ', i, ': ', a
        a = a * r ! Calcula o próximo termo
    end do

end program progressao_geometrica