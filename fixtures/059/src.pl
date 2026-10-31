parent(eli, cy).
parent(eli, jo).
parent(jo, hal).
parent(eli, dee).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
