% isprime(N) returns true if N is prime,
%             otherwise false.

isprime(2):-true,!.

isprime(N):- N < 2,false,!.

isprime(N):- not(divisible(N,2)).

divisible(X,Y):- 0 is X mod Y,!.

divisible(X,Y):- X > Y + 1, divisible(X,Y+1).
