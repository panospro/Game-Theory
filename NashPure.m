% Input: The board tables for player 1 and player 2
% Output: The pure Nash equilibrium points
function P = NashPure (A1, A2)

  [rows, cols] = size(A1);
  p1 = [];
  p2 = [];
  for i =1:rows
    for j =1:cols
      if A1(i,j) == max(A1(:,j)) && A2(i,j) == max(A2(i,:))
        p1(end + 1) = i;
        p2(end + 1) = j;
      endif
    endfor
  endfor
  P = [p1', p2'];
  
  
  
  
  
  
  
  
% The code below simulates example 2.2.11 and finds for each move
% of player 1's best moves by player 2 and vice versa and then examines
% how many balance points we have. But it has the disadvantage that if in one column
% we have 2 or more lines for player 1 which have the same maximum
% result then the code only finds 1. To avoid messing with arrays
% and dynamic bindings etc. we just bruteforced it by looking at the points one by one
% if they are equilibrium points
##  for i = 1:rows
##    tempm2 = 1; % Initialize with the first element and if a better one is found we refresh
##    best   = A2(i,1);
##    for j = 2:cols
##      if best < A2(i,j)
##        best = A2(i,j);
##        tempm2 = j; % The best strategy for the teammate
##      endif  
##    endfor
##    m2(i,:) = tempm2;
##  endfor
##  % Likewise for the player1
##  for i = 1:cols
##    tempm1 = 1; % Initialize with the first element and if a better one is found we refresh
##    best   = A1(i,1);
##    for j = 2:cols
##      if best < A1(i,j)
##        best = A1(i,j);
##        tempm1 = j; % The best strategy for the teammate
##      endif  
##    endfor
##    m1(i) = tempm1;
##  endfor
##  p1 = [];
##  p2 = [];
##  for i = 1:rows
##    if m2(m1(i)) == i
##      p1(end + 1) = m1(i); % If m2's best strategy in move m1(i) is i then the point is NE    
##      p2(end + 1) = i;
##    endif    
##  endfor
##  P = [p1, p2];
endfunction