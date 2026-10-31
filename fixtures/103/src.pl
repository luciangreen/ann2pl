pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.
