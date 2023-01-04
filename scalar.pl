% pescalar(L1,L2,P) P is the scalar product (L1,L2)

pescalar([],[],0).  % BASE CASE - both lists empty

pescalar([L1|List1],[L2|List2],R):  pescalar(List1,List2,R1), R is R1 + L1*L2.

% L = [L1|List1] = [5,2,1]
% Q = [L2|List2] = [3,2,3
% R1 = 7
% L1*L2 = 15
