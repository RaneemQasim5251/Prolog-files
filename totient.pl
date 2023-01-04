% totient_phi(M,Phi) Phi is the output value
%    in Eulers totient function when input is M

totient_phi(1,1). % Base Case: M = 1

totient_phi(M,Phi):- t_phi(M,Phi,1,0).

% t_phi(M,Phi,K,C) We count on the range [K,M]

t_phi(M,Phi,M,Phi):-!.

% Case K and M are coprime
t_phi(M,Phi,K,C):- K < M, coprime(K,M),!,
               C1 is C + 1, K1 is K + 1,
               t_phi(M,Phi,K1,C1).

% Case K and M are not coprime
t_phi(M,Phi,K,C):- K < M, K1 is K + 1,
                t_phi(M,Phi,K1,C).


coprime(X,Y):- gcd(X,Y,1).


gcd(X,0,X):- X > 0.

gcd(X,Y,G):- Y > 0, Z is X mod Y, gcd(Y,Z,G).


