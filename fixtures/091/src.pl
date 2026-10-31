bird(tweety).
bird(pingu).
bird(kiwi).
bird(opus).
bird(emu).
penguin(pingu).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).
