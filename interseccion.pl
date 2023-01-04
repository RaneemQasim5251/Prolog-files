    interseccion([], _, []).
    interseccion([X|L1], L2, [X|L3]):- member(X, L2), !, remove_element(X, L2, NewL2), interseccion(L1, NewL2, L3).
    interseccion([_|L1], L2, L3):- interseccion(L1, L2, L3).

    remove_element(X, L, NewL):- append(L1, [X|L2], L), append(L1, L2, NewL).
