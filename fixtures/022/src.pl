edge(a, e).
edge(b, a).
edge(c, b).
edge(c, f).
edge(d, c).
edge(d, e).
edge(d, f).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
