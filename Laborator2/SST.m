function v = SST(A, b)

    N = length(A);
    
    v = zeros(N, 1);
    
    for j = N : -1 : 1
      s = 0;
      for k = N : -1 : j
        s = sum(A(j, :) .* v');
      endfor
      v(j) = (b(j) - s) / A(j, j);
    endfor

endfunction