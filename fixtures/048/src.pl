parent(dee, ann).
parent(dee, hal).
parent(ann, bob).
parent(ann, jo).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
