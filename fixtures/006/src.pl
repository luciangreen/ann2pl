edge(a, c).
edge(b, d).
edge(c, b).
edge(d, c).
edge(e, b).
edge(e, c).
edge(e, d).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
