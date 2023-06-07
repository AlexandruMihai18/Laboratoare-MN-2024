function [x, succes, steps] = Gauss_Seidel_Matrice(A, b, x0, tol, max_steps)

  % vom utiliza pentru simplitate forma matriceala
  % urmarim A = N - P;
  
  succes = false;
  steps = 0;
  
  [n n] = size(A);
  
  N = tril(A);
  
  P = N - A;
  
  % conform demonstratie G = N ^ (-1) * P si c = N ^ (-1) * b;
  
  G_Gauss_Seidel = inv(N) * P;
  c_Gauss_Seidel = inv(N) * b;
  
  x_new = x0;
  
  while steps < max_steps
     x_prev = x_new;
     
     x_new = G_Gauss_Seidel * x_prev + c_Gauss_Seidel;
     
     if norm(x_new - x_prev) < tol
       succes = true;
       x = x_new;
       return;
     endif
     
     steps++;
  endwhile
  
  x = x_new;
  
endfunction