:- dynamic man/1.

woman(ana).
man(joao).
man(paulo).

likes(joao, ana).

child(paulo, ana).

mom(X) :-
  woman(X),
  child(_, X).

/*
  How to run: swipl -s aula1 or swipl then [aula1].
  Then you can ask based on characteristics and relations, for example:

  ?- mom(ana).
  true.

  ?- mom(paulo).
  false.

  ?- child(paulo, Mom).
  Mom = ana.


  The ":- dynamic <smth>/n." allows to add facts to 'smth' (it can be a characteristic or a relation) during the execution
  also, the n means the number of parameters 'smth' has.

  To add during execution, use the command assertz() or asserta().
  assertz(smth(x1, ..., xn)) add (x1, ..., xn) to the end of 'smth' list of facts.
  asserta(smth(x1, ..., xn)) add (x1, ..., xn) to the start of 'smth' list of facts.

  When a relation/characteristic has multiple answers, you can type ';' after a answer to get the next one, for example:

  ?- man(Man).
  Man = joao ;
  Man = paulo.

  ?- assertz(man(pedro)).
  ?- asserta(man(kaina)).
  ?- man(Man).
  Man = kaina ;
  Man = joao ;
  Man = paulo ;
  Man = pedro.
*/
