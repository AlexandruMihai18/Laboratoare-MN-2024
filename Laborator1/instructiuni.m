function [] = instructiuni()
  x = [1:1:5];
  % echivalent cu x = [1:5];
  sum = 0;
  
  for var = x
    % echivalent cu for (i = 1; i <= size(x); i++) 
    %                   var = x[i]; 
    sum += var;
  endfor
  
  display(sum);
  
  root = sqrt(sum);
  
  if root * root == sum
    display('Patrat perfect');
  else
    display('Nu prea e patrat perfect');
  endif
  
  display('Urmatorul patrat perfect este:');
  
  while root * root != sum 
    sum++;
    root = sqrt(sum);
  endwhile
  
  display(sum);
  
  % comentariu ceva
  
endfunction