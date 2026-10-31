edge(a, b).
edge(b, e).
edge(c, e).
edge(e, f).
edge(f, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
