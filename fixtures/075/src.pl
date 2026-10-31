bit(0).
bit(1).

any(X, Y) :- bit(X), bit(Y), X = 1.
any(X, Y) :- bit(X), bit(Y), Y = 1.
nor(X, Y) :- bit(X), bit(Y), \+ any(X, Y).
