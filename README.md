# Game-Theory
Using Octave to solve different problems

## The first problem:
An Octave function that solves puzzles, of the form [p1,p2,v]=MinMax(A),
where p1 is an optimal strategy for Player1, p2 is an optimal strategy for Player2 and v is the value of the game.  
There is also a script that uses MinMax(A) to solve different kind of games. For example, finding the optimal strategies for both players
in the following  array A=[2 4 6;-2 -3 -1; 1 3 4].


## The second problem:
### There are 6 functions that do the following:
* P=NashPure(A1,A2),which, computes pure NEs by enumeration. P is a matrix that contains every
line the movements [m1, m2] of a NE.  

* P=NashPlot(A1,A2),which, produces plots. P is a table which contains in each line the [p11, p12, p21, p22] of a NE.

* [p1,v1,p2,v2,test]=Nash(A1,A2),which, solves a two-board game with Non-Linear Programming.

* [p1,p2,V]=FictPlay(A,P0,m0,Iter),which, implements the fictitious play algorithm for board games (P0 is the player who plays first, m0
is the first move and Iter is the number of iterations).

* [p1,V1,p2,V2]=FictPlayB(A1,A2,P0,m0,Iter),which, implements the fictitious play algorithm for two-board games.
 
* [A1,A2,P]=SplitEuros(K),which, computes the NEs for the K Euros split game between the 2 players 

#### These 6 functions are used to solve the following 4 exercises:
* $A^{(1)} =[A^{(1)} A^{(2)} A^{(3)};A^{(2)} A^{(3)} A^{(1)};A^{(3)} A^{(1)} A^{(2)}]$  
 $A^{(2)} =[A^{(1)}$ 0; 0 2]  
$A^{(2)} =[A^{(2)}$ 1; 1 0]  
with 0 efficiency if the game lasts indefinitely.  

* different kind of games, given in the script

* same as before  

* The players $P^1$ , $P^2$  must share K Euros according to the following rules.  
  For n ∈ {1, 2}, $P^n$ independently and secretly choose an integer $m^n$  ∈ {1, 2, ..., K}.
Then the players reveal the numbers.
If $m^1$  + $m^2$ ≤ K, $P^n$  receives $m^n$  Euros. If $m^1$  + $m^2$  > K, $P^n$  takes 0 Euros.
