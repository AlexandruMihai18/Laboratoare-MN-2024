function [y] = Recursive_FFT(P)
  n = length(P);
  y = zeros(1, n);

  if n == 1
    y(1) = P(1);
    return;
  endif

  w_n = e ^ (2 * pi * i / n);
  w = 1;

  P_e = P(1:2:n);
  P_o = P(2:2:n);

  y0 = Recursive_FFT(P_e);
  y1 = Recursive_FFT(P_o);

  for k = 1 : (n / 2)
    y(k) = y0(k) + w * y1(k);
    y(k + (n / 2)) = y0(k) - w * y1(k);
    w = w * w_n;
  endfor
endfunction
