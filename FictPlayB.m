
function [p1, V1, p2, V2]= FictPlayB (A1, A2, P0, m0, Iter)
  % The strategy tables
  [M1, M2] = size(A1);
  p1 = zeros(M1,1);
  p2 = zeros(M2,1);
  if P0 == 1
    % we initialize the s values and to find the strategy we count
    % how many times strategy i was optimal and at the end we divide by Iter
    % We double the variables to hold maximum and minimum value
    % for player 1 and for player 2 based on each table. Every
    % player however determines his move based on his own board.
    % the index indicates which array the variable came from.
    s2 = A2(m0,:); 
    s1 = A1(m0,:);
    p1(m0) += 1;
    % player 2 chooses based on his own board alone!
    [~, j0] = max(s2);
    p2(j0) += 1;
    t2 = A2(:,j0);
    t1 = A1(:, j0);  
    upVal1(1) = max(t1);
    lowVal1(1) = min(s1);
    upVal2(1) = max(t2);
    lowVal2(1) = min(s2);
    for k=2:Iter
      [~, ik] = max(t1);
      p1(ik) += 1;
      s2 += A2(ik,:);
      s1 += A1(ik,:);
      [~, jk] = max(s2);
      p2(jk) += 1;
      t1 += A1(:,jk);
      t2 += A2(:,jk);
      upVal1(1) = max(t1/k);
      lowVal1(1) = min(s1/k);
      upVal2(1) = max(t2/k);
      lowVal2(1) = min(s2/k);    
    endfor
  endif

  if P0 == 2
    t1 = A1(:, m0); 
    t2 = A2(:,m0);
    p2(m0) += 1;
    [~, i0] = max(t1);
    p1(i0) += 1;
    s1 = A1(i0,:);
    s2 = A2(i0,:);  
    upVal1(1) = max(t1);
    lowVal1(1) = min(s1);
    upVal2(1) = max(t2);
    lowVal2(1) = max(t2);
    for k=2:Iter
      [~, jk] = max(s2);
      p2(jk) += 1;
      t1 += A1(:,jk);
      t2 += A2(:,jk);
      [~, ik] = max(t1);
      p1(ik) += 1;
      s1 += A1(ik,:);
      s2 += A2(ik,:);
      upVal1(1) = max(t1/k);
      lowVal1(1) = min(s1/k);
      upVal2(1) = max(t2/k);
      lowVal2(1) = min(s2/k);  
    endfor
  endif
  V1 = [max(lowVal1), min(upVal1)]';
  V2 =[max(lowVal2), min(upVal2)]';
  p1 = p1/Iter;
  p2 = p2/Iter;
endfunction