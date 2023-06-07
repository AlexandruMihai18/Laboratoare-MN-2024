function [Poly] = Vandermonde(X, Y)
  % (X, Y) - set of N points
  % X, Y, Poly - row vectors

  n = length(X);
  A = zeros(n, n);

  for i = 1 : n
    A(:, i) = X(:) .^ (i - 1);
  endfor

  A
  Poly = inv(A) * Y';
  Poly = Poly';

endfunction

