edge(a, c).
edge(a, d).
edge(c, e).
edge(d, b).
edge(e, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
