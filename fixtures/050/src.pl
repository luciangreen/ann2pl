parent(fay, dee).
parent(dee, ivy).
parent(ivy, jo).
parent(dee, hal).
parent(fay, cy).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
