parent(ann, cy).
parent(cy, ivy).
parent(cy, fay).
parent(ann, hal).
parent(ivy, gus).
parent(cy, dee).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
