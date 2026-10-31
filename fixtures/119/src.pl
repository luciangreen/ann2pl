likes(fay, red).
likes(cy, blue).
likes(bob, blue).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
