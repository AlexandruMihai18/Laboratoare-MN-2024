function [A_new b_new] = Pivotare_Gaussiana(A, b)
  % matricea extinsa specifica sistemului
  % alipim vectorul termenii liberi la matricea sistemului
  AE = [A b]
  
  for p = 1 : n - 1
    if AE(p,p) == 0
      printf("A(%d,%d) == 0", p, p);
      break;
    endif
    for i = p + 1 : n
      arg = AE(i,p) / AE(p,p);
      AE(i,:) = AE(i,:) - arg * AE(p,:);
    endfor
  endfor
endfunction