% prod(L,P) P is the product of elements in L

prod([],1).

prod([L1|List],P):- prod(List,P1), P is L1*P1.
