parent(ivy, gus).
parent(gus, dee).
parent(gus, hal).
parent(dee, fay).
parent(ivy, cy).
parent(dee, bob).
parent(hal, eli).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
