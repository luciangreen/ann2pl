likes(ivy, gold).
likes(dee, gold).
likes(jo, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.
