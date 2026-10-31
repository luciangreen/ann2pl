parent(bob, dee).
parent(dee, ann).
parent(ann, cy).
parent(dee, hal).
parent(bob, ivy).
parent(ann, gus).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
