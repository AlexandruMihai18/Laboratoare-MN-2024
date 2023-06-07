function [lambdas, Y] = MDef(A, tol, max_steps)
  lambdas = []; % eigen values
  Y = []; % eigen vectors
  A0 = A; % copy in order to retrieve the eigen vectors
  [n, n] = size(A);

  % in theory we would stop at n - 1 but applying the last Householder on the
  % 2 x 2 matrix alters the result heavily
  for i = 1 : n - 2
    [lambda, y] = MPD(A, ones(length(A), 1), tol, max_steps);
    % add the found eigen value
    lambdas = [lambdas lambda];
    v = y;

    % we use MPI in order to determine the eigen vector (considering that we cut
    % the original matrix
    [lambda, y] = MPI(A0, ones(n, 1), lambda, tol, max_steps);

    % add the found eigen vector
    Y = [Y y];

    % Householder
    sigma = sign(y(i)) * norm(y);
    v(1) = -sigma + y(1);
    H = eye(length(A)) - 2 * v * v' / (v' * v);
    A = H * A * H';
    B = A(2 : end, 2 : end);
    A = B;
  endfor

  % for the last 2 eigen value we use a MPD (for the biggest)
  % and MPI (for the lowest)
  [lambda, y] = MPD(A, ones(length(A), 1), tol, max_steps);
  lambdas = [lambdas lambda];

  [lambda, y] = MPI(A0, ones(n, 1), lambda, tol, max_steps);

  Y = [Y y];

  [lambda, y] = MPI(A, ones(length(A), 1), 0, tol, max_steps);
  lambdas = [lambdas lambda];

  [lambda, y] = MPI(A0, ones(n, 1), lambda, tol, max_steps);

  Y = [Y y];

endfunction
