% union(L1,L2,L) L is the union of L1 with L2

union([],L,L).
union([X|L1],L2,L3):- member(X,L2),!,union(L1,L2,L3).
union([X|L1],L2,[X|L3]):- union(L1,L2,L3).
