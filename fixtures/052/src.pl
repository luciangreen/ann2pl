parent(ann, dee).
parent(dee, cy).
parent(ann, hal).
parent(hal, jo).
parent(cy, fay).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
