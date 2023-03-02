function [row column] = matrix_exemple()
  column = [1; 2; 3];
  row = [1:3]; % echivalent cu row = [1 2 3];
  
  column
  
  display(column);
  display(row);
  
  A = zeros(3);
  B = eye(4);
  
  display(A);
  display(B);
  
  % comment
  
  matrix = [1:2:5; 2:2:6];
  element = matrix(2,3);
 
  display(matrix);
  display(element);
  
  a = matrix;
  b = [2 3; 4 5];
  c = [1 2; 3 4];
  
  display(c);
  
  add = a + 3
  multiplication = b * a
  multiplication2 = b .* c
  power = b ^ 2
  hadamand_power = b .^ 2
endfunction