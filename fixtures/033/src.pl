edge(b, d).
edge(c, a).
edge(c, f).
edge(e, f).
edge(f, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
