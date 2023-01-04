% dices(P,N,L) L stores the possible ways of throwing N dices
                          % and achieving P points
% what happens when P = 0 and N = 0?
dices(0,0,[]).
dices(P,N,[X|RL]) :- N > 0, member(X,[1,2,3,4,5,6]),
		P1 is P - X, N1 is N -1,
		dices(P1,N1,RL).
