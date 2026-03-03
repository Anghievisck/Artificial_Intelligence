% The second main in initialization serves to specify to SWI-Prolog to load the
% file first, then it runs, that means there will be no errors with "halt."

:- initialization(main, main).

main :-
  write('Hello World!'), nl,
  halt.
