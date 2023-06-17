function yi = SplineC1(x, y, dy, xi)
  % x - array of local points that we know the value of function
  % y - array of value of function
  % dy - array of first order derivative of the function
  % xi - given point where we want to approximate the function

  % first we find the interval [x_(i-1), x_i] that the point resides

  i = 1;

  while x(i) < xi
    i++;
  endwhile

  % using the Bernstein basis polynomials we know that
  % yi = a_i * (1 - t) ^ 3 + 3 * b_i * t * (1 - t) ^ 2 + 3 * c_i * t ^ 2  * (1 - t) + d_i * t ^ 3

  h_i = x(i) - x(i - 1);
  a_i = y(i - 1);
  b_i = y(i - 1) + h_i / 3 * dy(i - 1);
  c_i = y(i) - h_i / 3 * dy(i);
  d_i = y(i);

  t = (x - x(i - 1)) / (x(i) - x(i - 1));

  yi = a_i * (1 - t) ^ 3 + 3 * b_i * t * (1 - t) ^ 2 + 3 * c_i * t ^ 2  * (1 - t) + d_i * t ^ 3;

endfunction
