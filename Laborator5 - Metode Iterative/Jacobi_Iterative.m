function [x, succes, steps] = Jacobi_Iterative(A, b, x0, tol, max_steps)
 
  succes = false;
  steps = 0;

  [n n] = size(A);
 
  x_new = x0;
 
  while steps < max_steps
    x_prev = x_new;
    
    for i = 1 : n
      x_new(i) = b(i);
      
      for j = 1 : n
        if i != j
          x_new(i) -= A(i, j) * x_prev(j); 
        endif
      endfor
      
      x_new(i) /= A(i, i);
    endfor
    
    if norm(x_new - x_prev) < tol
      succes = true;
      x = x_new;
      return;
    endif
    
    steps++;
  endwhile
  
  x = x_new;
endfunction