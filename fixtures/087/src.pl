bird(opus).
bird(tweety).
bird(polly).
bird(emu).
bird(robin).
penguin(polly).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).
