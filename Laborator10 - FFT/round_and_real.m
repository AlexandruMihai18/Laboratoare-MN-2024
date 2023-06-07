function [Result] = round_and_real(P)
  n = length(P);
  Result = zeros(1, n);

  Result(:) = round(real(P(:)));
endfunction
