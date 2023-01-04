% count_leaves(T,N):- the binary tree T has N leaves

count_leaves(nil,0). % Base Case: T = empty


count_leaves(t(_,nil,nil),1):-!.

count_leaves(t(_,L,R),N):- count_leaves(L,NL),
            count_leaves(R,NR), N is NL + NR.
