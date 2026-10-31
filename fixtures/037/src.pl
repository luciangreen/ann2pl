edge(a, d).
edge(c, d).
edge(d, a).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
