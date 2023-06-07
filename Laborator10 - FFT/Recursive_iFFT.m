function [P] = Recursive_iFFT(y)
  n = length(y);
  P = zeros(1, n);

  if n == 1
    P(1) = y(1);
    return;
  endif

  w_n = e ^ -(2 * pi * i / n);
  w = 1;

  y_e = y(1:2:n);
  y_o = y(2:2:n);

  P0 = Recursive_DFT(y_e);
  P1 = Recursive_DFT(y_o);

  for k = 1 : (n / 2)
    P(k) = P0(k) + w * P1(k);
    P(k + (n / 2)) = P0(k) - w * P1(k);
    w = w * w_n;
  endfor
endfunction
