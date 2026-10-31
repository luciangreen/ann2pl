parent(dee, ivy).
parent(ivy, hal).
parent(ivy, bob).
parent(hal, jo).
parent(hal, eli).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
