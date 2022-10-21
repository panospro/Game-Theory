# Game-Theory


# The first problem:
An Octave function that solves puzzles, of the form [p1,p2,v]=MinMax(A),
where p1 is an optimal strategy for Player1, p2 is an optimal strategy for Player2 and v is the value of the game.  
There is also a script that uses MinMax(A) to solve different kind of games. For example, finding the optimal strategies for both players
in the following  array A=[2 4 6;-2 -3 -1; 1 3 4].


# The second problem:
There are 6 functions that do the following:
* P=NashPure(A1,A2),which, computes pure NEs by enumeration. P is a matrix that contains every
line the movements [m1, m2] of a NE.  

* P=NashPlot(A1,A2),which, produces plots. P is a table which contains in each line the [p11, p12, p21, p22] of a NE.

* [p1,v1,p2,v2,test]=Nash(A1,A2),which, solves a two-board game with Non-Linear Programming.

* [p1,p2,V]=FictPlay(A,P0,m0,Iter),which, implements the fictitious play algorithm for board games (P0 is the player who plays first, m0
is the first move and Iter is the number of iterations).

* [p1,V1,p2,V2]=FictPlayB(A1,A2,P0,m0,Iter),which, implements the fictitious play algorithm for two-board games.
 
* [A1,A2,P]=SplitEuros(K),which, computes the NEs for the K Euros split game between the 2 players 
