parent(dee, gus).
parent(dee, hal).
parent(hal, ann).
parent(ann, ivy).
parent(ann, cy).
parent(dee, eli).
parent(ann, fay).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
