function [I] = M_Simpson_Compusa(f, a, b, N)
  % f - the given function
  % a - lower bound
  % b - upper bound
  % N - number of intermediate intervals

  % For no other intermediate points -- N = 1

  h = (b - a) / N;
  f_a = f(a);
  f_b = f(b);

  f_intermediate = zeros(1, N - 1);

  for i = 1 : N - 1
    f_intermediate(i) = f(a + i * h);
  endfor

  I = h / 3 * (f_a + f_b + 4 * sum(f_intermediate(1 : 2 : N - 1)) + 2 * sum(f_intermediate(2 : 2 : N - 1)));

endfunction

