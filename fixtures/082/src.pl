bird(tweety).
bird(pingu).
bird(robin).
bird(kiwi).
bird(emu).
penguin(tweety).

flies(X) :- bird(X), \+ penguin(X).
