edge(b, d).
edge(b, f).
edge(c, e).
edge(c, f).
edge(d, e).
edge(f, e).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
