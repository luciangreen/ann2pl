bird(opus).
bird(emu).
bird(tweety).
bird(polly).
penguin(polly).

injured(tweety).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).
