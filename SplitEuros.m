function [A1, A2, P] = SplitEuros(k)
  %P moves m1 m2
  %A1,A2 are yield tables for P1 P2

  A1=zeros(k,k);
  A2=zeros(k,k); 
  for i=1:k
    for j=1:k
      if i+j<=k
        A1(i,j)=i;
        A2(i,j)=j;
      endif
    endfor
  endfor
  %initial value for m0=1
  [p1, V1, p2, V2] = FictPlayB(A1, A2, 1, 1, 15);
  P = [p1,p2];
endfunction
