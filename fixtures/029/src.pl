edge(a, c).
edge(b, a).
edge(b, c).
edge(c, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
