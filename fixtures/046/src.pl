parent(gus, ivy).
parent(gus, jo).
parent(jo, ann).
parent(jo, bob).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
