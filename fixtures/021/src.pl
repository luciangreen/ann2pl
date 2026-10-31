edge(b, c).
edge(b, d).
edge(b, e).
edge(c, b).
edge(c, f).
edge(d, e).
edge(f, a).
edge(f, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
