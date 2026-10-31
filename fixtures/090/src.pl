bird(kiwi).
bird(emu).
bird(pingu).
penguin(emu).
penguin(kiwi).

flies(X) :- bird(X), \+ penguin(X).
