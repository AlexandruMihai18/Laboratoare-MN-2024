function [A_new b_new] = GPP(A, b)
  [n, n] = size(A);
  
  % matricea extinsa
  AE = [A b];
  
  for p = 1 : n - 1
    max_row = p, max_value = AE(p,p);
    
    % cautam linia cu cea mai mare valoare in modul (functia abs)
    % de pe coloana p
    for i = p : n;
      if max_value < abs(AE(i,p))
        max_value = abs(AE(i,p));
        max_row = i;
      endif
    endfor
  
    % interschimbam linia p cu linia ce contine valoarea maxima gasita
    for i = p : n + 1
      temp = AE(p, i);
      AE(p, i) = AE(max_row, i);
      AE(max_row, i) = temp;
    endfor
    
    % daca valoare maxima este 0 --> ecuatiile nu sunt independente si
    % sistemul nu are solutie unica
    if AE(p,p) == 0
      printf("A(%d,%d) == 0, ecuatiile nu sunt independente", p, p);
      break;
    endif
    
    % pasul clasic de pivotare gaussiana
    for i = p + 1 : n
      % factor de scalare
      factor = AE(i,p) / AE(p,p);
      AE(i,:) = AE(i,:) - factor * AE(p,:);
    endfor
  endfor
  
  % A devine matrice superior triunghiulara in urma procesului
  A_new = AE(:, 1:n);
  
  % termenii liberi (aflat in vectorul b) se modifica
  b_new = AE(:, n + 1);
  disp(AE);
  
endfunction