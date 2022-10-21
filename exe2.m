A11 = [-10, 2; 1, -1];
A12 = [5, -2; -1, 1];
A21 = [-2, 3; 1, -1];
A22 = [2, -3; -1, 1];
A31 = [1, 3, 1; -2, 0, 2; 1, 5, 0];
A32 = [2, 3, 1; -2, 2, -1; 4, 1, 7];
A41 = [2, 0, -1; 0, 1, 1];
A42 = [1, 0, 1; 0, 2, 3];
A51 = [-3, 2, 0, 1; 2, 2, -3, 1; 2, -5, -1, 1; -4, 2, 1, -3];
A52 = [-4, -1, 6, 1; 0, 2, 0, -2; -3, 1, -1, -3; 3, -5, 2, 1];

P1 = NashPure(A11, A12)
P2 = NashPure(A21, A22)
P3 = NashPure(A31, A32)
P4 = NashPure(A41, A42)
P5 = NashPure(A51, A52)



% The Nash function was throwing a bug that we didn't manage to fix

[P11, V11, P12, V12] = FictPlayB(A11, A12, 1, 1, 20)
[P21, V21, P22, V22] = FictPlayB(A21, A22, 1, 1, 20)
[P31, V31, P32, V32] = FictPlayB(A31, A32, 1, 1, 20)
[P41, V41, P42, V42] = FictPlayB(A41, A42, 1, 1, 20)
[P51, V51, P52, V52] = FictPlayB(A51, A52, 1, 1, 20)

% dimension reduction
A31 = [0, 2; 5, 0];
A32 = [ 2, -1; 1, 7];

A41 = [2, -1; 0, 1];
A42 = [1, 1; 0, 3];

A51 = [2, 2; -4, 2];
A52 = [0, 2; 3, -5];

P1 = NashPlot(A11, A12)
P2 = NashPlot(A21, A22)
P3 = NashPlot(A31, A32)
P4 = NashPlot(A41, A42)
P5 = NashPlot(A51, A52)