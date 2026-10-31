edge(a, c).
edge(a, d).
edge(c, b).
edge(e, b).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
