% fib(N,F) F is N-th fibonacci number for the given N

fib(1,1):-!.   % base case 1
fib(2,1):-!.   % base case 2


fib(N,F):- N1 is N-1, N2 is N-2,
            fib(N1,F1), fib(N2,F2), F is F1 + F2.


% F1 = fib(N1) = fib(N-1)
% F2 = fib(N2) = fib(N-2)

% fib(N-2)
