function [y] = Runge_Kutta4(f, t0, x0, dt, n)
  % instead of using h (as in the presented formula), we use dt
  y = zeros(n + 1, 1);
  y(1) = x0;

  for i = 1 : n
    tk = t0 + dt * (i - 1);
    xk = y(i);
    k1 = dt * f(tk, xk);
    k2 = dt * f(tk + 1 / 2 * dt, xk + 1 / 2 * k1);
    k3 = dt * f(tk + 1 / 2 * dt, xk + 1 / 2 * k2);
    k4 = dt * f(tk + dt, xk + k3);
    y(i + 1) = xk + 1 / 6 * (k1 + 2 * k2 + 2 * k3 + k4);
  endfor

endfunction
