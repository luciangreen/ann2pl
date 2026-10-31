edge(a, b).
edge(a, c).
edge(b, c).
edge(d, a).
edge(d, b).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
