bird(pingu).
bird(robin).
bird(emu).
bird(polly).
bird(tweety).
bird(kiwi).
penguin(polly).
penguin(pingu).

injured(kiwi).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).
