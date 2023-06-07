function [New_P] = add_zeros(P)
  n = length(P);
  New_P = zeros(1, 2 * n);
  New_P(1 : n) = P(:);
endfunction
