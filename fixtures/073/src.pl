bit(0).
bit(1).

or(X, Y) :- bit(X), bit(Y), X = 1.
or(X, Y) :- bit(X), bit(Y), Y = 1.
