function [y] = Runge_Kutta2(f, t0, x0, dt, n)
  % instead of using h (as in the presented formula), we use dt
  % this specific formula is using the Euler - Cauchy consideration that u = 1

  y = zeros(n + 1, 1);
  y(1) = x0;

  for i = 1 : n
    tk = t0 + dt * (i - 1);
    xk = y(i);
    k1 = dt * f(tk, xk);
    k2 = dt * f(tk + dt, xk + k1);
    y(i + 1) = xk + 1 / 2 * k1 + 1 / 2 * k2;
  endfor

endfunction
