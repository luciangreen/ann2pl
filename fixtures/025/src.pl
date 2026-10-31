edge(a, d).
edge(b, c).
edge(c, b).
edge(c, d).
edge(d, a).
edge(d, b).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
