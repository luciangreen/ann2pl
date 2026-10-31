edge(a, d).
edge(c, d).
edge(e, a).
edge(f, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
