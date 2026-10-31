parent(ann, cy).
parent(cy, gus).
parent(cy, fay).
parent(fay, dee).
parent(cy, jo).
parent(ann, hal).
parent(jo, ivy).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
