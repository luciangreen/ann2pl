parent(ann, eli).
parent(ann, ivy).
parent(ivy, gus).
parent(ivy, jo).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
