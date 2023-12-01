% Llamamiento inicial
spark:-	writeln('Hola, mi nombre es 343 Gulty Spark monitor de la instalacion 04, estare encantado de asistirte. Te recuerdo que todas las entradas deben ser en minusculas y con un "." al final'),
	readln(Input),
	spark(Input),!.


	% despedidas

	spark(Input):- Input == ['adios', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	spark(Input):- Input == ['Adios', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	spark(Input):- Input == ['Bye', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	spark(Input):- Input == ['bye', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	spark(Input):- Input == ['desactivate', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	spark(Input):- Input == ['Desactivate', '.'],
	writeln('Adios, espero haberte ayudado.'), !.

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
	template([botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	template([hablame, del, botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	template([que, sabes, del, botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	template([que, es, el, botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	%template([incidencia],[],[]).

	% TEMPLATES DE BOTULISMO
	% sintomas
	template([sintomas], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).
	
	template([sintomas, del, botulismo], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, del botulismo], ListaResultado, []) :-
		findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).

	template([dime, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).
	
	template([dime, los, sintomas, del botulismo], ListaResultado, []) :-
		findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).
	
	% causas
	template([cuales, son, las, causas], ListaResultado, []) :-
		findall(Causas, causa_botulismo(Causas), ListaResultado).
	
	template([cuales, son, las, causas, del, botulismo], ListaResultado, []) :-
		findall(Causas, causa_botulismo(Causas), ListaResultado).

	template([cuales, pueden, ser, las, causas, del, botulismo], ListaResultado, []) :-
		findall(Causas, causa_botulismo(Causas), ListaResultado).

	template([dime, las, causas], ListaResultado, []) :-
		findall(Causas, causa_botulismo(Causas), ListaResultado).
	
	template([dime, las, causas, del, botulismo], ListaResultado, []) :-
		findall(Causas, causa_botulismo(Causas), ListaResultado).
	
	template([causas], ListaResultado, []) :-
    	findall(Causas, causa_botulismo(Causas), ListaResultado).
	
	template([causas, del, botulismo], ListaResultado, []) :-
    	findall(Causas, causa_botulismo(Causas), ListaResultado).

	% especialistas
	template([con, quien, voy], ListaResultado, []) :-
		findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).
	
	template([quien, lo, atiende], ListaResultado, []) :-
		findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).
	
	template([quien, atiende, el, botulismo], ListaResultado, []) :-
		findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).
	
	template([cuales, son, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).

	template([dime, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).
	
	template([especialistas], ListaResultado, []) :-
    	findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).
	
	template([especialista], ListaResultado, []) :-
    	findall(Especialistas, especialista_botulismo(Especialistas), ListaResultado).

	% medicamento
	template([medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([medicamento], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([farmacos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([que, medicamentos, necesito], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([que, medicamentos, debo, tomar], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).

	% trataemiento
	template([tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([cual, es, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([como, se, trata, el, botulismo], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([cuales, son, las, medidas], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).

	% templates basicos
	template([hola, soy, s(_), '.'], ['Hola', 0, '¿',eres, un, perrito, de, la, c, '?'], [2]).
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
	template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).
	template(_, ['No te he comprendido, dime algo que que sirva'], []). 

	% Hechos de causas del botulismo
	causa_botulismo(' Alimentos mal procesados').
	causa_botulismo(' Almacenamiento inadecuado de alimentos').
	causa_botulismo(' Heridas contaminadas').
	causa_botulismo(' Ingesta de esporas').

	% Hechos de sintomas del botulismo
	sintoma_botulismo(' Vision borrosa').
	sintoma_botulismo(' Debilidad').
	sintoma_botulismo(' Dificultad del habla').
	sintoma_botulismo(' Dificultad para tragar').
	sintoma_botulismo(' Resequedad').
	sintoma_botulismo(' Fatiga').
	sintoma_botulismo(' Paralisis').
	sintoma_botulismo(' Mareo').
	sintoma_botulismo(' Estreñimiento').
	sintoma_botulismo(' Fotofobia').
	sintoma_botulismo(' Dolor').

	% Hechos de especialistas del botulismo
	especialista_botulismo(' Neurologo').
	especialista_botulismo(' Toxicologo').
	especialista_botulismo(' infectologo').
	especialista_botulismo(' Gastroenterologo').

	% Hechos de medicamentos para el botulismo
	medicamento_botulismo(' Antitoxina botulinica').
	medicamento_botulismo(' 3-4 diaminopiridina').
	medicamento_botulismo(' Analgesicos').

	% Hechos del tratamiento para el botulismo
	tratamiento_botulismo(' Cuidados de apoyo').
	tratamiento_botulismo(' Medicacion contra sintomas').
	tratamiento_botulismo(' Eliminar la fuente de toxicidad').
	tratamiento_botulismo(' Ventilacion asistida').
	

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

	/*	% spark Sintomas:
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
*/