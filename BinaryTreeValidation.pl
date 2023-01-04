% istree(T) :- succeeds if and only if T is a Prolog term representing a binary tree.

istree(nil). % Base Case: Tree is Empty

istree(t(_,L,R)):- istree(L), istree(R).

