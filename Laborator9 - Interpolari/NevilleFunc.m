function [xx, yy] = NevilleFunc(xs, ys, points)

  n = length(xs);
  xx = linspace(xs(1), xs(n), points);
  yy = [];

  for i = 1 : n
    yy = NevillePoints(1, n - 1, xx, xs, ys);
  endfor
endfunction
