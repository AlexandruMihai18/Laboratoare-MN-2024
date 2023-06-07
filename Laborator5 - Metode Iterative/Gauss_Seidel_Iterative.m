function [x, succes, steps] = Gauss_Seidel_Iterative(A, b, x0, tol, max_steps)
  
  succes = false;
  steps = 0;
  
  [n n] = size(A);
  
  x_new = x0;
  
  while steps < max_steps
    x_prev = x_new;
    
    for i = 1 : n
      x_new(i) = b(i); 
      x_new(i) -= sum(A(i, 1 : i - 1) * x_new(1 : i - 1)); 
      x_new(i) -= sum(A(i, i + 1 : n) * x_prev(i + 1 : n));
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