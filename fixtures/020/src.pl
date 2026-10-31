edge(a, b).
edge(b, d).
edge(c, a).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
