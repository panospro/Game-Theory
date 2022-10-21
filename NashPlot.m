function P = NashPlot (A1, A2)
% The functions that calculate p1 as a function of p2 and vice versa are
  % or M with the corresponding arguments
  % we will have a step of 0.001 for the plot and for the NEs
  % This part of the code is computationally slow.
  figure()
  for i = 0:0.01:1
    plot(i, M(A2, i), 'r')
    hold on
    plot(M(A1, i), i, 'b')
    hold on  
  endfor
  
  xlabel("The probability p_1 that the first player plays the first strategy")
  ylabel("The probability p_2 that the second player plays the first strategy")
  title("The equilibrium points are the common points of M1 and M2")
  ##legend("The M_2 function in red","The M_1 function in blue")
  P = [];
  p1 = [];
  p2 = []; % p1, p2 the tables that we will capture the equilibrium points
  for i = 0:0.01:1
    for j =0:0.01:1
      if any(M(A1,j) == i) && any(M(A2,i) == j)
        p1(end + 1) = i;
        p2(end + 1) = j;
      endif
    endfor
  endfor
  
  P = [p1; ones(1,length(p1)) - p1; p2; ones(1,length(p2)) - p2]';

endfunction
