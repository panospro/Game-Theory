
function [p1, p2, V]= FictPlay (A, P0, m0, Iter)
  % The strategy tables
  [M1, M2] = size(A);
  p1 = zeros(M1,1);
  p2 = zeros(M2,1);
  if P0 == 1
    % we initialize the s values and to find the strategy we count
    % how many times strategy i was optimal and at the end we divide by Iter
    s = A(m0,:); 
    p1(m0) += 1;
    [~, j0] = min(s);
    p2(j0) += 1;
    t = A(:, j0);  
    upVal(1) = max(t);
    lowVal(1) = min(s);
    for k=2:Iter
      [~, ik] = max(t);
      p1(ik) += 1;
      s += A(ik,:);
      [~, jk] = min(s);
      p2(jk) += 1;
      t += A(:,jk);
      upVal(k) = max(t/k);
      lowVal(k) = min(s/k);     
    endfor
  endif

  if P0 == 2
    t = A(:, m0); 
    p2(m0) += 1;
    [~, i0] = max(t);
    p1(i0) += 1;Pl
    s = A(i0,:);  
    upVal(1) = max(t);
    lowVal(1) = min(s);
    for k=2:Iter
      [~, jk] = min(s);
      p2(jk) += 1;
      t += A(:,jk);
      [~, ik] = max(t);
      p1(ik) += 1;
      s += A(ik,:);
      upVal(k) = max(t/k);
      lowVal(k) = min(s/k);
    endfor
  endif
  V = [max(lowVal'), min(upVal')]';
  p1 = p1/Iter;
  p2 = p2/Iter;

  
endfunction
