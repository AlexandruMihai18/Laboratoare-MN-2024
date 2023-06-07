function [P] = normalize(P)
  n = length(P);
  P(:) = P(:) / n;
endfunction
