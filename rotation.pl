% rotate(L,N,X) :- the list X is obtained from the list L by rotating the elements of L N places to the left.

% N >= 0, Rotate to the Left
rotate(L,N,X):- N >= 0,!, length(L,S), P is N mod S,
                rotate_left(L,P,X).

% N < 0, Abstractly Rotate to the Right
rotate(L,N,X):- N < 0, length(L,S), P is (S + (N mod S)) mod S,
                rotate_left(L,P,X).

 rotate_left(L,0,L):-!.

 rotate_left(L,P,X):- split(L,P,S1,S2), append(S2,S1,X).


split(L,0,[],L). % Base Case: N = 0

split([X|Xs],N,[X|Ys],Zs):- N > 0, N1 is N-1, split(Xs,N1,Ys,Zs).
