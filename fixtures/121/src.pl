likes(eli, green).
likes(gus, green).
likes(cy, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
