parent(hal, bob).
parent(hal, gus).
parent(bob, cy).
parent(cy, ivy).
parent(cy, ann).
parent(cy, eli).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
