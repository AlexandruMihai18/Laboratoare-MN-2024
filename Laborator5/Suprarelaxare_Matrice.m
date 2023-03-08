function [x, succes, steps] = Suprarelaxare_Matrice(A, b, x0, omega, tol, max_steps)

  % vom utiliza pentru simplitate forma matriceala
  % urmarim A = N - P;
  
  succes = false;
  steps = 0;
  
  [n n] = size(A);
  
  N_omega = 1 / omega * diag(diag(A)) - (tril(A) - diag(diag(A)));
  
  P_omega = N_omega - A;
  
  % conform demonstratie G = N ^ (-1) * P si c = N ^ (-1) * b;
  
  G_SOR = inv(N_omega) * P_omega;
  c_SOR = inv(N_omega) * b;
  
  x_new = x0;
  
  while steps < max_steps
     x_prev = x_new;
     
     x_new = G_SOR * x_prev + c_SOR;
     
     if norm(x_new - x_prev) < tol
       succes = true;
       x = x_new;
       return;
     endif
     
     steps++;
  endwhile
  
  x = x_new;
  
endfunction