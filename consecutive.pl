% compress(L,S) :- the list S is obtained from the
% list L by compressing repeated occurrences of elements into a single copy of the element.

compress([],[]). % Base Case: L is empty []

compress([X],[X]). % Base Case: L only one element

compress([X,X|Xs],S):- compress([X|Xs],S).

compress([X,Y|Ys],[X|S]) :- X \= Y, compress([Y|Ys],S). % \= means (differents from).
