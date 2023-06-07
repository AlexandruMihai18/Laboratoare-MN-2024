function [lambda, y, step] = MPD(A, y0, tol, max_steps)
  % initialise the eigen value lambda as inf for error purposes
  lambda = inf;

  % starting the eigen vector with the initial solution
  y = y0;

  for step = 1 : max_steps
    z = A * y;
    y = z / norm(z);
    lambda_old = lambda;
    lambda = y' * A * y;

    err = abs(lambda - lambda_old);

    if err < tol
      return;
    endif

  endfor
endfunction
