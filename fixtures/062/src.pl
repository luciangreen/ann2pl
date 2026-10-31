parent(gus, fay).
parent(fay, eli).
parent(gus, ivy).
parent(ivy, ann).
parent(gus, jo).
parent(jo, bob).
parent(jo, dee).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
