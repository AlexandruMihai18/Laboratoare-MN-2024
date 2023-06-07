function [Poly] = Lagrange(X, Y, points)
  % Evaluate the Lagrange Polynomial on a couple of points

  n = length(points);

  Poly(:) = LP(X, Y, points(:));

endfunction
