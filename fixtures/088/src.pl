bird(kiwi).
bird(tweety).
bird(opus).
bird(emu).
bird(pingu).
penguin(pingu).

flies(X) :- bird(X), \+ penguin(X).
