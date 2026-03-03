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
  Then you can ask based on the caracterics of the predicates, for example:

  ?- mom(ana). 
  true

  ?- mom(paulo).
  false 
*/
