function result = M (A, p)
  result = (A(1,1) - A(1,2) - A(2,1) + A(2,2))*p +(A(1,2) - A(2,2));
  % Because we may not fall exactly to 0 we leave a margin, an area
  result1 = (A(1,1) - A(1,2) - A(2,1) + A(2,2))*(p+0.005) +(A(1,2) - A(2,2));
  
  if result < - abs(result - result1)
    result = 0;
  elseif result > abs(result - result1)
    result = 1;
  else
    result = 0:0.005:1;
  endif
endfunction
