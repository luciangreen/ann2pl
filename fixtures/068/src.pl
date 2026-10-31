bit(0).
bit(1).

both(X, Y) :- bit(X), bit(Y), X = 1, Y = 1.
nand(X, Y) :- bit(X), bit(Y), \+ both(X, Y).
