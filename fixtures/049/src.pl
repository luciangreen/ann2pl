parent(cy, ivy).
parent(ivy, gus).
parent(ivy, jo).
parent(jo, ann).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
