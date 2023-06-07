function [Poly] = LP(X, Y, x_p)
  % (X, Y) - set of given points
  % x_p - point which we want to evaluate the function

  n = length(X);
  s = 0;

  for i = 1 : n
    L = ones(n, 1);
    for j = 1 : n
      if i != j
        % Lagrange Multiplicator
        L(i) = L(i) * (x_p - x(j)) / (x(i) - x(j));
      endif
    endfor
  endfor

  for i = 1 : n
    s = s + L(i) * Y(i);
  endfor

  Poly = s;

endfunction
