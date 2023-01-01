% split(L,N,F,S) :- the list F contains the first N elements of the list L, the list S contains the remaining elements.

split(L,0,[],L). % Base Case: N = 0

split([X|Xs],N,[X|Ys],Zs):- N > 0, N1 is N-1, split(Xs,N1,Ys,Zs).
