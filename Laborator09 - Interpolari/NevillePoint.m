function [y] = NevillePoint(i, j, x, xs, ys)

  if i == j
    y = ys(i + 1);
    return;
  endif

  delta = xs(j + 1) - xs(i + 1);
  Pij = (xs(j + 1) - ) * NevillePoint(i, j - 1, x, xs, ys);
  Pji = (x - xs(i + 1) * NevillePoint(i - 1, j, x, xs, ys);
  y = (Pij - Pji) / delta;

endfunction
