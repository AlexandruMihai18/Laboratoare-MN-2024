function [lambdas, step] = qr_simple(A, tol, max_steps)
  % we know that A is tridiagonal matrix

  lambdas = [];

  for step = 1 : max_steps
    [Q, R] = qr(A);
    A = R * Q;
    err = norm(A - diag(diag(A)));

    if err < tol
      lambdas = diag(A);
      return;
    endif

  endfor

endfunction
