% is_ord(L) returns true if the list L is ordered in increasing value
%           return false otherwise

is_ord([]).     % base case 1: the list L is empty []
is_ord([_]).    % base case 2: the list L has one single element

is_ord([L1,L2|Tail]):- L1 < L2, is_ord([L2|Tail]).
