likes(eli, red).
likes(fay, red).
likes(ivy, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
