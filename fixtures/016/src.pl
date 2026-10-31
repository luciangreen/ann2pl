edge(b, e).
edge(c, a).
edge(c, b).
edge(c, f).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
