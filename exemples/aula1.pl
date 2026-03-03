:- dynamic man/1.

woman(ana).
woman(maria).

man(mario).
man(joao).
man(paulo).

likes(joao, ana).
likes(ana, joao).
likes(mario, maria).

parent(ana, paulo).
parent(joao, paulo).
parent(maria, ana).

mom(X) :-
  woman(X),
  parent(X, _).

father(X) :-
  man(X),
  parent(X, _).

grandma(X) :-
  mom(X),
  parent(X, Y),
  mom(Y).

grandma(X) :-
  mom(X),
  parent(X, Y),
  father(Y).

married(X, Y) :-
  likes(X, Y),
  likes(Y, X).

/*
  How to run: swipl -s aula1 or swipl then [aula1].
  Then you can ask based on characteristics and relations, for example:

  ?- mom(ana).
  true.

  ?- mom(paulo).
  false.

  ?- parent(paulo, Mom).
  Mom = ana.

  When a relation/characteristic has multiple answers, you can type ';' after a answer to get the next one, for example:

  ?- man(Man).
  Man = joao ;
  Man = paulo.

  The ":- dynamic <smth>/n." allows to add facts to 'smth' (it can be a characteristic or a relation) during the execution
  also, the n means the number of parameters 'smth' has.
  To add during execution, use the command assertz() or asserta().
  assertz(smth(x1, ..., xn)) add (x1, ..., xn) to the end of 'smth' list of facts.
  asserta(smth(x1, ..., xn)) add (x1, ..., xn) to the start of 'smth' list of facts.

  ?- assertz(man(pedro)).
  ?- asserta(man(kaina)).
  ?- man(Man).
  Man = kaina ;
  Man = joao ;
  Man = paulo ;
  Man = pedro.
*/
