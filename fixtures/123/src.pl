likes(ann, blue).
likes(hal, gold).
likes(eli, blue).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
