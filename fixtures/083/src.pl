bird(pingu).
bird(opus).
bird(robin).
penguin(opus).
penguin(pingu).

injured(robin).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).
