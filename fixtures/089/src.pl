bird(robin).
bird(kiwi).
bird(polly).
bird(opus).
bird(pingu).
bird(emu).
penguin(kiwi).

injured(robin).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).
