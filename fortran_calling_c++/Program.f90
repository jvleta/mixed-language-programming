program main
  use, intrinsic :: iso_c_binding
  implicit none

  interface 
    function addtwonumbers(X, Y) result(Z) bind(c)
      use iso_c_binding
      real(c_double), value :: X 
      real(c_double), value :: Y
      real(c_double)        :: Z
    end function addtwonumbers
  end interface 
  
  real(c_double) :: x1
  real(c_double) :: x2
  real(c_double) :: x3

  x1 = 1.0 
  x2 = 1.0 
  x3 = 0.0 

  write(*,*) addtwonumbers(x1, x2)

  stop 

end program 