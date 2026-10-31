parent(fay, dee).
parent(dee, cy).
parent(fay, ann).
parent(cy, ivy).
parent(dee, jo).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
