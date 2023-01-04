% removeAt(X,L,K,S) X is the element of the list L at position K; S is the list that remains when X is removed from L.

removeAt(X,[X|Xs],1,Xs):-!. % Base Case

removeAt(X,[Y|Xs],K,[Y|Ys]):- K1 is K - 1, removeAt(X,Xs,K1,Ys).
