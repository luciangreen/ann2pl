parent(ann, jo).
parent(ann, bob).
parent(ann, eli).
parent(eli, hal).
parent(bob, ivy).
parent(hal, fay).
parent(fay, cy).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
