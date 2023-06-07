function [Result] = FFT_polynomial_multiplication(P1, P2)
  % we would consider that both P1 and P2 have 2^k coeficients for easier
  % implementation, however the padding with zeros could be done that it adds
  % to a 2^k coeficients, some being zeros

  New_P1 = add_zeros(P1);
  New_P2 = add_zeros(P2);

  y1 = Recursive_FFT(New_P1);
  y2 = Recursive_FFT(New_P2);

  y_result = multiply_points(y1, y2);

  P = Recursive_iFFT(y_result);
  P_normalized = normalize(P);
  Result = round_and_real(P_normalized);
endfunction
