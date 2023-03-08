function [Q R] = Householder(A)
  [m, n] = size(A);
  H = eye(m);
  
  for p = 1 : min(m - 1, n)
    [vp, sigma, beta] = GetHSReflector(A(1:m, p), p);
    up = ApplyHSToPColumn(vp, p, sigma);
    Hp = eye(m);
    Hp = Hp - 2 * (up * up') / (up' * up);
    A = Hp * A;
    H = Hp * H;
  endfor

  Q = H';
  R = A;
endfunction