parent(gus, ann).
parent(ann, ivy).
parent(gus, hal).
parent(ann, eli).
parent(ivy, cy).
parent(eli, jo).
parent(eli, dee).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
