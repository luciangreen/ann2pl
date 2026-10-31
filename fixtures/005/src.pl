edge(a, c).
edge(a, d).
edge(b, a).
edge(b, c).
edge(d, a).
edge(e, a).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
