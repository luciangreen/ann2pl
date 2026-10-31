edge(a, e).
edge(b, e).
edge(d, a).
edge(e, d).
edge(f, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
