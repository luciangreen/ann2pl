parent(hal, jo).
parent(hal, cy).
parent(cy, fay).
parent(hal, bob).
parent(cy, gus).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
