% range(X,Y,L) :- X <= Y, and L is the list containing all consecutive integers from X to Y.

range(X,X,[X]):-!. % Base Case (X==Y)
% (!)==> cut operator ==> save execution time speed.

range(X,Y,[X|S]):- X < Y, X1 is X + 1, range(X1,Y,S).

