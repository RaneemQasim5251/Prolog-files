% inorder(T,S) S is inorder sequence of T

inorder(T,S):- inorder_aux(T,L), atom_chars(S,L).

inorder_aux(nil,[]). % Base Case: T is empty

inorder_aux(t(X,Left,Right),List):-
    inorder_aux(Left,ListLeft),
    inorder_aux(Right,ListRight),
    append(ListLeft,[X|ListRight],List).
