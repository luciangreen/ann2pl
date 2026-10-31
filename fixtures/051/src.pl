parent(fay, ivy).
parent(fay, cy).
parent(ivy, gus).
parent(cy, eli).
parent(gus, ann).
parent(ann, bob).
parent(ivy, dee).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
