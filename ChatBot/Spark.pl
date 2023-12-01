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


	% saludos
	template([hola, soy, s(_), '.'], ['Hola', 0, '¿',eres, un, perrito, de, la, c, '?'], [2]).
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
	template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).

	% templates interactivos base
	template([te, gustan, las, s(_), _], [flagLike], [3]).
	template([te, gustan, los, s(_), _], [flagLike], [3]).
	template([tu, sabes, s(_)], [flagDo], [2]).
	template([eres, s(_)], [flagIs], [1]).

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

	template([cuales, son, los, sintomas, del, botulismo], ListaResultado, []) :-
		findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).

	template([dime, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_botulismo(Sintomas), ListaResultado).
	
	template([dime, los, sintomas, del, botulismo], ListaResultado, []) :-
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

	% templates comparativos
	template([s(_), es, un, sintoma], [flagSintoma], [0]).
	template([s(_), es, una, causa], [flagCausas], [0]).
	template([s(_), es, un, especialista], [flagEspecialista], [0]).
	template([s(_), es, un, medicamento], [flagMedicamento], [0]).

	% templates basicos
	template(_, ['No te he comprendido, dime algo que que sirva'], []). 

	% HECHOS SOBRE MI ENFERMEDAD "BOTULISMO"
	% Hechos y flag de causas del botulismo
	causasIs(X, R):- causa_botulismo(X), R = [si, X, es, una, causa, del, botulismo].
    causasIs(X, R):- \+causa_botulismo(X), R = [X, no, es, una, causa, del, botulismo].
	causa_botulismo('alimentos_mal_procesados').
	causa_botulismo('almacenamiento_inadecuado_de_alimentos').
	causa_botulismo('heridas_contaminadas').
	causa_botulismo('ingesta_de_esporas').

	% Hechos y flag de sintomas del botulismo
	sintomaIs(X, R):- sintoma_botulismo(X), R = [si, X, es, un, sintoma, del, botulismo].
    sintomaIs(X, R):- \+sintoma_botulismo(X), R = [X, no, es, un, sintoma, del, botulismo].
	sintoma_botulismo('vision borrosa').
	sintoma_botulismo('debilidad').
	sintoma_botulismo('dificultad del habla').
	sintoma_botulismo('dificultad para tragar').
	sintoma_botulismo('resequedad').
	sintoma_botulismo('fatiga').
	sintoma_botulismo('paralisis').
	sintoma_botulismo('mareo').
	sintoma_botulismo('estreñimiento').
	sintoma_botulismo('fotofobia').
	sintoma_botulismo('dolor').

	% Hechos y flag de especialistas del botulismo
	especialistaIs(X, R):- especialista_botulismo(X), R = [si, X, es, un, especialista, apto, para, diagnosticar, el, botulismo].
    especialistaIs(X, R):- \+especialista_botulismo(X), R = [X, no, es, un, especialista, apto, para, diagnosticar, el, botulismo].
	especialista_botulismo('neurologo').
	especialista_botulismo('toxicologo').
	especialista_botulismo('infectologo').
	especialista_botulismo('gastroenterologo').

	% Hechos de medicamentos para el botulismo
	medicamentoIs(X, R):- medicamento_botulismo(X), R = [si, X, es, un, medicamento, para, tratar, el, botulismo].
    medicamentoIs(X, R):- \+medicamento_botulismo(X), R = [X, no, es, un, medicamento, para, tratar, el, botulismo].
	medicamento_botulismo('antitoxina botulinica').
	medicamento_botulismo('3-4 diaminopiridina').
	medicamento_botulismo('analgesicos').

	% Hechos del tratamiento para el botulismo
	tratamiento_botulismo('cuidados de apoyo').
	tratamiento_botulismo('medicacion contra sintomas').
	tratamiento_botulismo('eliminar la fuente de toxicidad').
	tratamiento_botulismo('ventilacion asistida').

	% HECHOS SOBRE EL TEMA QUE ELEGí "HALO"
	% Facciones de Halo
	faccion('UNSC').
	faccion('Covenant').
	faccion('Herejes').
	faccion('Forerurnner').
	faccion('Flood').
	
	% Especies de Halo
	especie('Humano').
	especie('Sangheili').
	especie('Forerunner').
	especie('Jiralhanae').
	especie('Kig_Yar').
	especie('Unggoy').
	especie('San_Shyuum').
	especie('Flood').

	% Status de los personajes de Halo
	estado('Activo').
	estado('Muerto_en_accion').
	estado('Desaparecido_en_accion').
	estado('Inactivo').

	% Primera aparicion de los personajes de Halo
	primerAparicion('Halo_combat_evolved').
	primerAparicion('Halo 2').
	primerAparicion('Halo 3').

	% Peronsajes de Halo (Solo algunos)
	personaje('jonh_117').
	personaje('cortana').
	personaje('avery_jonhson').
	personaje('jacob_keyes').
	personaje('chipps_dubbo').
	personaje('Yayap').
	personaje('miranda_keyes').
	personaje('Rtas_Vadum').
	personaje('343_guilty_spark').
	personaje('inquisidor').
	personaje('tartarus').
	personaje('gravemind').
	personaje('protogravemind').
	personaje('Sesa_Refumee').
	personaje('2401_Penitent_Tangent').
	personaje('Maccabeus').
	personaje('edward_buck ').
	personaje('Yeg_Ranem ').
	personaje('Lepidus').
	personaje('piedad').
	personaje('pesar').
	personaje('verdad').


			/*
			2401_Penitent_Tangent - Halo 2
Sangheili	Sesa_Refumee - Halo 2
Sangheili	Rtas_Vadum (Medianoche) - También conocido como Elites oscuros, Rtas 'Vadum lidera la flota de Élites en Halo 2 y aparece en Halo 3.
Jiralhanae	Maccabeus - Presente en la novela "Halo: Contact Harvest," es un líder Brute.
	kig-yar	Yeg_Ranem - Aparece en la novela "Halo: The Cole Protocol."
	kig-yar	Lepidus - Un líder Kig-Yar que aparece en las novelas "Halo: The Cole Protocol" y "Halo: Contact Harvest."
	ungoy	Yayap - Aparece en la novela "Halo: The Flood," que es una adaptación del juego "Halo: Combat Evolved."
			jacob_keyes - Halo: Combat Evolved, Halo: Reach (mencionado)
			cortana - Halo: Combat Evolved, Halo 2, Halo 3
			avery_johnson - Halo: Combat Evolved, Halo 2, Halo 3, Halo: ODST
			miranda_keyes - Halo 2, Halo 3
			343_guilty_spark - Halo: Combat Evolved, Halo 2, Halo 3
			arbiter_thel_vadam - Halo 2, Halo 3
			tartarus - Halo 2
			gravemind - Halo 2, Halo 3
			profeta_del_pesar - Halo 2
			profeta_de_la_verdad - Halo 2, Halo 3
			chipps_dubbo - Halo 3, Halo: ODST
			edward_buck - Halo 2, Halo 3: ODST, Halo 5: Guardians
			jenkins - Halo: Combat Evolved

			*/
	% Lo que le gusta a spark : flagLike
	sparkLikes(X, R):- likes(X), R = [simon, me, gusta, X].
	sparkLikes(X, R):- \+likes(X), R = [X, no, me, gusta].
	likes(apples).
	likes(ponies).
	likes(zombies).
	likes(manzanas).
	likes(computadoras).
	like(carros).

	% lo que hace spark: flagDo
	sparkDoes(X, R):- does(X), R = [si, yo, X].
	sparkDoes(X, R):- \+does(X), R = [X, no, yo, no, lo, hago].
	does(study).
	does(cook).
	does(work).

	% lo que es spark: flagIs
	sparkIs(X, R):- is0(X), R = [si, soy, X].
	sparkIs(X, R):- \+is0(X), R = [no, soy, X].
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

	% botulismo Sintomas:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagSintoma,
		sintomaIs(Atom, R).

	% botulismo Causas:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCausas,
		causasIs(Atom, R).

	% botulismo Especialista
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEspecialista,
		especialistaIs(Atom, R).

	% botulismo medicamento
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagMedicamento,
		medicamentoIs(Atom, R).

