edge(a, b).
edge(a, d).
edge(b, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).
