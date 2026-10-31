bird(tweety).
bird(emu).
bird(kiwi).
bird(robin).
penguin(tweety).

flies(X) :- bird(X), \+ penguin(X).
