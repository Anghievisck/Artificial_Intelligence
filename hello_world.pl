% This way, the SWI-Prolog runs the file while loading it,
% it may cause some errors with "halt."

:- initialization(main).

main :-
  write('Hello World!'), nl.
