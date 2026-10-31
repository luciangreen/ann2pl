parent(cy, ann).
parent(ann, fay).
parent(cy, hal).
parent(fay, ivy).
parent(ann, bob).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
