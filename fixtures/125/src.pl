likes(ivy, red).
likes(ann, green).
likes(gus, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
