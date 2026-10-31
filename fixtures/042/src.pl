parent(fay, ivy).
parent(ivy, gus).
parent(fay, ann).
parent(fay, jo).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
