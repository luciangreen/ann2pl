edge(a, d).
edge(b, a).
edge(c, b).
edge(e, d).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
