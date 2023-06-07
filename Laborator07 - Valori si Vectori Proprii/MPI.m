function [lambda, y, step] = MPI(A, y0, miu, tol, max_steps)
  [n, n] = size(A);
  lambda = inf;
  I = eye(n);
  y = y0;

  for step = 1 : max_steps
    z = inv(A - miu * I) * y;
    y = z / norm(z);
    lambda_old = lambda;
    lambda = y' * A * y;
    err = abs(lambda - lambda_old);

    if err < tol
      return;
    endif

  endfor

endfunction
