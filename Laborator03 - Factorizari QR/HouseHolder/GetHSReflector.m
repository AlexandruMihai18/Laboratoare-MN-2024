function [vp, sigma, beta] = GetHSReflector(x,p)

  n = length(x);
  sigma = 0;

  for i = p : n
    vp(i) = x(i);
    sigma = sigma + x(i)^2; 
  endfor
  
  sigma = sign(x(p)) * sqrt(sigma);
  beta = sigma * x(p);
  
  vp = vp';
  
endfunction