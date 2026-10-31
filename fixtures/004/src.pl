edge(b, d).
edge(b, f).
edge(c, d).
edge(c, f).
edge(f, d).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
