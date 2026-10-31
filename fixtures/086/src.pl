bird(emu).
bird(kiwi).
bird(tweety).
bird(polly).
bird(robin).
bird(opus).
penguin(robin).

injured(opus).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).
