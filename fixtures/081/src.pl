bird(opus).
bird(pingu).
bird(robin).
bird(emu).
bird(kiwi).
penguin(opus).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).
