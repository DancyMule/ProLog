% Llamamiento inicial
spark:-	writeln('Hola, mi nombre es 343 Gulty Spark monitor de la instalacion 04, estare encantado de asistirte. Te recuerdo que todas las entradas deben ser en minusculas y con un "." al final'),
	readln(Input),
	spark(Input),!.


	% despedidas

	spark(Input):- Input == ['adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
	spark(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
	spark(Input):- Input == ['Bye', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
	spark(Input):- Input == ['bye', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
	spark(Input):- Input == ['desactivate', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
	spark(Input):- Input == ['Desactivate', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.

	spark(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	spark(Input1), !.

	% Info - Botulismo
	template([botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaeróbica, lo que significa que prospera en entornos con bajos niveles de oxígeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulínica, es una de las toxinas más potentes conocidas por la humanidad.'],[]).
    template([bola], ['cara de hola']).
    % ESTE ORDEN ES OBLIGATORIO PARA QUE JALE

    % generacion de la lista
    template([lista, de, animales], ListaResultado, []) :-
    findall(Animal, animal(Animal), ListaResultado).

    % Hechos unarios sobre animales
    animal(gato).
    animal(perro).
    animal(pajaro).

    % Consulta directa
    template([lista, de, animales], ListaResultado, []).


	% Lo que le gusta a spark : flagLike
	sparkLikes(X, R):- likes(X), R = ['Yeah', i, like, X].
	sparkLikes(X, R):- \+likes(X), R = ['Nope', i, do, not, like, X].
	likes(apples).
	likes(ponies).
	likes(zombies).
	likes(manzanas).
	likes(computadoras).
	like(carros).



	% lo que hace spark: flagDo
	sparkDoes(X, R):- does(X), R = ['Yes', i, X, and, i, love, it].
	sparkDoes(X, R):- \+does(X), R = ['No', i, do, not, X ,'.', it, is, too, hard, for, me].
	does(study).
	does(cook).
	does(work).

	% lo que es spark: flagIs
	sparkIs(X, R):- is0(X), R = ['Yes', yo, soy, X].
	sparkIs(X, R):- \+is0(X), R = ['No', i, am, not, X].
	is0(dumb).
	is0(weird).
	is0(nice).
	is0(fine).
	is0(happy).
	is0(redundant).

	match([],[]).
	match([], _):- true.

	match([S|Stim],[I|Input]) :-
		atom(S), % si I es un s(X) devuelve falso
		S == I,
		match(Stim, Input),!.

	match([S|Stim],[_|Input]) :-
	% I es un s(X), lo ignoro y continúo con el resto de la lista
		\+atom(S),
		match(Stim, Input),!.

	replace0([], _, _, Resp, R):- append(Resp, [], R),!.

	% spark likes:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagLike,
		sparkLikes(Atom, R).

	% spark does:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDo,
		sparkDoes(Atom, R).

	% spark is:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIs,
		sparkIs(Atom, R).

	replace0([I|Index], Input, N, Resp, R):-
		length(Index, M), M =:= 0,
		nth0(I, Input, Atom),
		select(N, Resp, Atom, R1), append(R1, [], R),!.

	replace0([I|Index], Input, N, Resp, R):-
		nth0(I, Input, Atom),
		length(Index, M), M > 0,
		select(N, Resp, Atom, R1),
		N1 is N + 1,
		replace0(Index, Input, N1, R1, R),!.

		% spark Sintomas:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == f=FlagSintomas,
		sparkSintomas(Atom, R).

	replace0([I|Index], Input, N, Resp, R) :-
		nth0(I, Input, Atom),
		length(Index, M), M > 0,
		select(N, Resp, Atom, R1),
		N1 is N + 1,
		replace0(Index, Input, N1, R1, R), !.
