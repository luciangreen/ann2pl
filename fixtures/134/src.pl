item(a).
item(b).
lst([]).
lst([H|T]) :- item(H), lst(T).
