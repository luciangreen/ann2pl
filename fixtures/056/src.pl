parent(gus, hal).
parent(hal, ann).
parent(ann, fay).
parent(ann, jo).
parent(fay, ivy).
parent(jo, cy).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
