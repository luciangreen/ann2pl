parent(jo, ann).
parent(ann, gus).
parent(gus, dee).
parent(jo, eli).
parent(dee, ivy).
parent(jo, hal).
parent(gus, fay).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
