likes(bob, gold).
likes(hal, gold).
likes(fay, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
