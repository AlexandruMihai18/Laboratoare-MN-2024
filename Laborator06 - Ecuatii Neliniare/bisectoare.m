function [x, success, steps] = bisectoare(f, a, b, tol, max_steps)
  success = false;
  steps = 0;
  
  while steps < max_steps;
    x = (a + b) / 2;
    temp = feval(f, a) * feval(f, x);
    
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