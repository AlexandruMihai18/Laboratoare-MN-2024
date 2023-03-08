function v = SIT(A, b)

    N = length(A);
    
    v = zeros(N, 1);
    
    for j = 1 : N
      s = 0;
      for k = 1 : j
        s = sum(A(j, :) .* v');
      endfor
      v(j) = (b(j) - s) / A(j, j);
    endfor

endfunction