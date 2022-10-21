A11 = [3, 2; 4, 1];
A12 = [3, 4; 2, 1];
A21 = [4, 1; 3, 2];
A22 = [4, 3; 1, 2];
A31 = [4, 3; 3, 2];
A32 = [4, 3; 1, 2];
A41 = [1, 2, -2; 3, -1, 0];
A42 = [-1, 3, 1; 1, 1, 0];
A51 = [1, 2, -2; 3, -1, 0; 2, 1, 4];
A52 = [-1, 3, 1; 1, 1, 0; 4, -1, -4];
A61 = [1, 0, 0; 0, 1, 0; 0, 0, 1];
A62 = [0, 0, 1; 1, 0, 0; 0, 1, 0];
A71 = [-3, 2, 0, 1; 2, 2, -3, 1; 2, -5, -1, 1; -4, 2, 1, -3];
A72 = [-4, -1, 6, 1; 0, 2, 0, -2; -3, 1, -1, -3; 3, -5, 2, 1];


for p = 1:2
  [M(1), M(2)] = size(A11);
  for i=1:M(p)
    [P11, V11, P12, V12] = FictPlayB(A11, A12, p, i, 40)   
  endfor
  
  [M(1), M(2)] = size(A21);
  for i=1:M(p)
    [P21, V21, P22, V22] = FictPlayB(A21, A22, p, i, 40)   
  endfor
  
  [M(1), M(2)] = size(A31);
  for i=1:M(p)
    [P31, V31, P32, V32] = FictPlayB(A31, A32, 1, 1, 40)   
  endfor
  
  [M(1), M(2)] = size(A41);
  for i=1:M(p)
    [P41, V41, P42, V42] = FictPlayB(A41, A42, 1, 1, 40)  
  endfor
  
  [M(1), M(2)] = size(A51);
  for i=1:M(p)
    [P51, V51, P52, V52] = FictPlayB(A51, A52, 1, 1, 40) 
  endfor
  
  [M(1), M(2)] = size(A61);
  for i=1:M(p)
    [P61, V61, P62, V62] = FictPlayB(A61, A62, 1, 1, 40)  
  endfor
  
  [M(1), M(2)] = size(A61);
  for i=1:M(p)
    [P61, V61, P62, V62] = FictPlayB(A61, A62, 1, 1, 40) 
  endfor
endfor

% If we find an equilibrium point then with this specific approach
% of the problem we get stuck in this, i.e. there is a repetition K0 where for
% every K > K0 we will have a single value that each player will play. If it exists
% and other equilibrium point we cannot know. We will have to try
% different values for the m0 value.