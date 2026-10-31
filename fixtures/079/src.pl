bird(tweety).
bird(robin).
bird(opus).
bird(emu).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).
