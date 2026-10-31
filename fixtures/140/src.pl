parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
