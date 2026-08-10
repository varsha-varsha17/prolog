male(tom).
male(bob).
female(pam).

parent(tom,bob).
parent(pam,bob).

father(X,Y):-male(X),parent(X,Y).
mother(X,Y):-female(X),parent(X,Y).