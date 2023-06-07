function [x, succes, steps] = secanta(f, a, b, tol, max_steps)
  success = false;
  steps = 0;
  
  while steps < max_steps;
    fa = feval(f, a);
    fb = feval(f, b);
    
    x = (a * fb - b * fa) / (fb - fa);
    temp = fa * feval(f, x);
    
    if temp < 0
      b = x;  
    elseif temp > 0
      a = x;
    else 
      success = true;
      return;
    endif
    
    if abs(b - a) < tol
      success = true;
      return;
    endif
    
    steps++;
  endwhile
  
endfunction