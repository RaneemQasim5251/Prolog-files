% copy(L,N,S) S is obtained from L by copying all elements N times.

copy(L,N,S):- copy(L,N,S,N).


% copy(L,N,S,K) S is obtained from L by copying its leading element K times, all other elements N times.

copy([],_,[],_). % Base Case: L is empty
copy([_|Xs],N,Ys,0):- copy(Xs,N,Ys,N). % Base Case: New Head
copy([X|Xs],N,[X|Ys],K):- K > 0, K1 is K - 1,copy([X|Xs],N,Ys,K1).
