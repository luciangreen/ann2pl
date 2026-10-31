edge(a, f).
edge(b, f).
edge(c, e).
edge(c, f).
edge(f, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
