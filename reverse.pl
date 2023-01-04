% last_element(L,X). X is the last element of L

last_element(L,X):- append(_,[X],L).

% reverse_list(L,R). R is the reversed list of L

reverse_list([],[]).

reverse_list(L,[X|RL]):- last_element(L,X),
        removeLast(L,NewL), reverse_list(NewL,RL).

% removeLast(L,NewL) NewL is L without the last element

removeLast(L,NewL):- append(NewL,[_],L).


% R = [X|RL]
