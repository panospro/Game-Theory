number = input("Choose the number of the exercise : ");
switch(number)
case 1
  A = [2 4 6; -2 -3 1; 1 3 4];
  [p1, p2, v] = MinMax(A);
  
case 2
  A = [1 1 0; 0 1 1; 1 0 2];
  [p1, p2, v] = MinMax(A);
  
case 3
  A = [1 -2 3 -4; 0 1 -2 3; 0 0 1 -2; 0 0 0 1];
  [p1, p2, v] = MinMax(A);
  
case 4
  A = [0 1 0; 1 0 0; 0 0 1];
  [p1, p2, v] = MinMax(A);
  
case 5
  A = [4 3 2 1; 0 0 0 4; 0 0 5 2; 0 3 6 3];
  [p1, p2, v] = MinMax(A);
  
case 6
  A = [1 -1 0; 0 1 -1; 0 0 1];
  [p1, p2, v] = MinMax(A);
  
case 7
  A = [1 -1 0 0; 0 0 0 1; 0 0 1 -1; 0 1 -1 0];
  [p1, p2, v] = MinMax(A);
  
case 8
  A = [0 -1 2 -1; 0 0 0 -1; 0 0 -1 2; -1 2 -1 0];
  [p1, p2, v] = MinMax(A);
  
otherwise
  fprintf(" Give a valide number ")
  
endswitch

