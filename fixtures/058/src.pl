parent(fay, cy).
parent(cy, dee).
parent(fay, eli).
parent(eli, hal).
parent(cy, ann).
parent(hal, bob).
parent(cy, jo).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
