likes(jo, gold).
likes(fay, green).
likes(gus, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
