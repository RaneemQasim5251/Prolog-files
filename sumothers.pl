
% sumothers(L) returns true if exists an element in the list L, that is
%               the sum of all the other elements in L


sumothers(L):- append(L1,[X|L2],L), append(L1,L2,NewL),
                    sum(NewL,X).




% sum(L,N) N is the sum of all the elements in the list L

sum([],0).  % BASE CASE , when the list is empty []

sum([X|Tail],N):- sum(Tail,N1), N is X + N1.

