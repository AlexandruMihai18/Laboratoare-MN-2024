function [output] = vectorizari(v)
  input = [1:6];
  output = sin(v * pi / 6);
  
  M = [1 2 3; 4 5 6; 7 8 9];
  
  ind = find(mod(M, 4) == 0);
  M(ind) = -M(ind);
  
  % comment
  
  display(M);
endfunction