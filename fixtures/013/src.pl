edge(b, a).
edge(c, a).
edge(d, a).
edge(d, e).
edge(e, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
