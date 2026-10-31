likes(gus, gold).
likes(eli, gold).
likes(cy, gold).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
