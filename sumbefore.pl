% sumbefore(L) it will return true if there is an element in the list L
% that is equal to the sum of the previous elements.
sumbefore(L) :- append(L1,[X|_],L), sum(L1,X).

% sum(L,X) X is the sum of all the elements in L

sum([],0). % base case

sum([X|Tail],S) :- sum(Tail,S1), S is X + S1.
