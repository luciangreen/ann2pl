edge(a, d).
edge(c, d).
edge(d, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
