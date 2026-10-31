edge(a, e).
edge(b, c).
edge(b, d).
edge(e, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
