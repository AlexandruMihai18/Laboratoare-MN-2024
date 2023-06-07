function [lambdas, Y, step] = MPO(A, tol, max_steps)
  % Metoda puterii ortogonale
  % Utilizam o matrice auxiliara U0 simetrica, pe care o folosim pentru
  % a determina valorii proprii

  lambdas = [];
  Y = [];
  [n, n] = size(A);
  U0 = rand(n, n);
  U0 = U0 * U0';

  for step = 1 : max_steps
    [Q, R] = qr(U0);
    U = A * Q;
    err = norm(U - U0);

    if err < tol
      lambdas = diag(R);
      Y = Q;
      return;
    endif

    U0 = U;
  endfor

endfunction
