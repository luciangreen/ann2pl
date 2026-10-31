edge(a, b).
edge(b, d).
edge(b, e).
edge(c, a).
edge(d, a).
edge(e, a).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
