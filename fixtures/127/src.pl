likes(fay, gold).
likes(gus, gold).
likes(bob, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
