domain(person, [bob, hal, fay, cy]).
domain(colour, [green, gold, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).
