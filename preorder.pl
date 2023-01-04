% preorder(T,S) S is the preorder sequence of T


preorder(T,S):- preorder_aux(T,L), atom_chars(S,L).

preorder_aux(nil,[]). % Base Case: T is empty

preorder_aux(t(X,Left,Right),[X|List]):-
        preorder_aux(Left,ListLeft),
        preorder_aux(Right,ListRight),
        append(ListLeft,ListRight,List).
