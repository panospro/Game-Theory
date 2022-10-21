function  [p1, v1, p2, v2, test] = Nash (A1, A2)
  [M1,M2] = size(A1); % The dimensions of the tables
  x0 = rand(M1+M2+2,1); % we choose random numbers (probabilities of strategies) from 0 to 1
 
  % the matrix with which we will make a quadratic (non-linear) minimization function
  H = [zeros(M1,M1),A1,zeros(M1,2);A2',zeros(M2,M2+2);zeros(2,M1+M2+2)]; 
  c = [zeros(M1+M2,1);1;1]; % the matrix for the linear part of the function
  % Then tables are defined for the constraints to call fmincon and the bounds for x
  Ain = [zeros(M1,M1),A1,-ones(M1,1),zeros(M1,1);A2',zeros(M2,M2+1),-ones(M2,1)];
  bin = zeros(M1+M2,1);
  Aeq = [ones(1,M1),zeros(1,M2+2);zeros(1,M1),ones(1,M2),0,0];
  beq = [1.0;1];
  xlow = [zeros(M1+M2,1);-Inf;-Inf];
  xup = [ones(M1+M2,1);+Inf;+Inf];
  fun = @(x)(-x'*H*x+c'*x); % The function we will minimize
  % First we run the command pkg load optim
  x = fmincon(fun,x0,Ain,bin,Aeq,beq,xlow,xup)

  % In output x is the data stored, the values which minimize f (so maximize -f)
  % So for every pair p1, p2 that maximizes -f and obeys the constraints, is a NE point
  
  p1 = x(1:M1);
  p2 = x(M1+1:M1+M2);
  v1 = x(M1+M2+1);
  v2 = x(M1+M2+2);
  test = fun(x)


endfunction
