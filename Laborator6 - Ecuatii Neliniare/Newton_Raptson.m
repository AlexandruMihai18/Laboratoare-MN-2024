function [x, success, steps] = Newton_Raptson(f, x0, tol, max_steps)
  success = 0;
  steps = 0;
  fd = polyder(f);
  
  x_new = x0;
  
  while steps < max_steps
    
    fx = polyval(f, x_new);
    fdx = polyval(fd, x_new);
  
    xi = x0 - fx / fdx;
    fxi = polyval(f, xi);

    if abs(fxi - fx) < tol
      success = 1;
      x = xi;
      return;
    endif

    steps++;    
    x_new = xi;
  endwhile

endfunction
