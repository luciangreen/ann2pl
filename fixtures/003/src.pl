edge(a, e).
edge(a, f).
edge(b, d).
edge(c, b).
edge(e, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
