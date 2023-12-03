% Llamamiento inicial
spark:-	writeln('Hola, mi nombre es 343 Gulty Spark monitor de la instalacion 04, estare encantado de asistirte con informacion a cerca del botulismo o del universo de Halo. Te recuerdo que todas las entradas deben ser en minusculas y con un "." al final.
Si deseas colocar un nombre de personaje dividelo con "_" en vez de espacios.
Puedes comenzar poniendo "indice de activacion" para ver que es lo que puedo hacer.'),
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
	template([hola, soy, s(_), '.'], ['Hola', 0,eres, un, perrito, de, la, c, '?'], [2]).
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
	template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).

	% templates interactivos base
	template([te, gustan, las, s(_), _], [flagLike], [3]).
	template([te, gustan, los, s(_), _], [flagLike], [3]).
	template([tu, sabes, s(_)], [flagDo], [2]).
	template([eres, s(_)], [flagIs], [1]).
	
	template([indice, de, activacion],['Puesde peguntarme sobre el botulismo; sus sintomas, causas, especialistas, tratamiento y medicamentos. 
Tambien puedes preguntarme sobre Halo; especies, facciones, personajes, juegos y estado de los personajes.
Tambien puedes hacer afirmaciones para comprobar informacion especifica como: 

		"carreon es un especialista del botulismo.", o "josue es humano"'],[]).
	

	% TEMPLATES DE BOTULISMO
	% Info del botulismo
	template([botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	template([hablame, del, botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	template([que, sabes, del, botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).
	template([que, es, el, botulismo],['El botulismo es una enfermedad rara pero grave causada por la toxina producida por la bacteria Clostridium botulinum. Esta bacteria es anaerobica, lo que significa que prospera en entornos con bajos niveles de oxigeno, como el interior de latas o envases sellados, suelos contaminados y heridas infectadas. La toxina que produce, llamada toxina botulinica, es una de las toxinas mas potentes conocidas por la humanidad.'],[]).

	% sintomas del botulismo
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
	
	% causas del botulismo
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

	% especialistas del botulismo
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

	% medicamento del botulismo
	template([medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([medicamento], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos, del, botulismo], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos, del, botulismo], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([farmacos], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([que, medicamentos, necesito], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).
	
	template([que, medicamentos, debo, tomar], ListaResultado, []):-
		findall(Medicamentos, medicamento_botulismo(Medicamentos), ListaResultado).

	% trataemiento del botulismo
	template([tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([tratamiento, del, botulismo], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([cual, es, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento, del, botulismo], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([cual, es, el, tratamiento, del, botulismo], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([como, se, trata, el, botulismo], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).
	
	template([cuales, son, las, medidas], ListaResultado, []):-
		findall(Tratameintos, tratamiento_botulismo(Tratameintos), ListaResultado).

	% templates comparativos del botulismo
	template([s(_), es, un, sintoma], [flagSintoma], [0]).
	template([s(_), es, un, sintoma, del, botulismo], [flagSintoma], [0]).
	template([s(_), es, una, causa], [flagCausas], [0]).
	template([s(_), es, una, causa, del, botulismo], [flagCausas], [0]).
	template([s(_), es, un, especialista], [flagEspecialista], [0]).
	template([s(_), es, un, especialista, del, botulismo], [flagEspecialista], [0]).
	template([s(_), es, un, medicamento], [flagMedicamento], [0]).
	template([s(_), es, un, medicamento, para, el, botulismo], [flagMedicamento], [0]).

	% TEMPLATES DE HALO


	%FALTAN LOS FINDAALL INDIVIDUALES DE ESPECIE, FACCION, ETC
	% facciones halo
	template([facciones], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).
	
	template([dime, las, facciones], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).
	
	template([dime, las, facciones, de, halo], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).
	
	template([cuales, son, las, facciones], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).

	template([cuales, son, las, facciones, de, halo], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).
	
	template([hay, facciones, '?'], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).

	template([hay, facciones, en, halo, '?'], ListaResultado, []):-
		findall(Facciones, faccion(Facciones), ListaResultado).

		% unsc
		template([unsc], ListaResultado, []):-
			findall(UNSC, unsc(UNSC), ListaResultado).
		
		template([quien, es, unsc], ListaResultado, []):-
			findall(UNSC, unsc(UNSC), ListaResultado).
		
		template([quien, es, de, la, unsc], ListaResultado, []):-
			findall(UNSC, unsc(UNSC), ListaResultado).
		
		template([quienes, son, parte, de, la, unsc], ListaResultado, []):-
			findall(UNSC, unsc(UNSC), ListaResultado).
		
		template([miembros, unsc], ListaResultado, []):-
			findall(UNSC, unsc(UNSC), ListaResultado).
		
		template([miembros, de, la, unsc], ListaResultado, []):-
			findall(UNSC, unsc(UNSC), ListaResultado).

		% covenant
		template([covenant], ListaResultado, []):-
			findall(Covenant, covenant(Covenant), ListaResultado).
		
		template([quien, es, covenant], ListaResultado, []):-
			findall(Covenant, covenant(Covenant), ListaResultado).
		
		template([quien, es, del, covenant], ListaResultado, []):-
			findall(Covenant, covenant(Covenant), ListaResultado).
		
		template([quienes, son, parte, del, covenant], ListaResultado, []):-
			findall(Covenant, covenant(Covenant), ListaResultado).
		
		template([miembros, covenant], ListaResultado, []):-
			findall(Covenant, covenant(Covenant), ListaResultado).
		
		template([miembros, del, covenant], ListaResultado, []):-
			findall(Covenant, covenant(Covenant), ListaResultado).
		
		% herejes
		template([herejes], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		template([hereje], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		template([quienes, son, herejes], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		template([quien, es, de, los , herejes], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		template([quienes, son, parte, de, los, herejes], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		template([miembros, herejes], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		template([miembros, de, los, herejes], ListaResultado, []):-
			findall(Herejes, hereje(Herejes), ListaResultado).
		
		% faccion forerunner
		template([faccion, forerunner], ListaResultado, []):-
			findall(ForerunnerFaccion, forerunnerFaccion(ForerunnerFaccion), ListaResultado).
		
		template([quien, es, faccion, forerunner], ListaResultado, []):-
			findall(ForerunnerFaccion, forerunnerFaccion(ForerunnerFaccion), ListaResultado).
		
		template([quien, es, de, la, faccion, forerunner], ListaResultado, []):-
			findall(ForerunnerFaccion, forerunnerFaccion(ForerunnerFaccion), ListaResultado).
		
		template([quienes, son, parte, de, la, faccion, forerunner], ListaResultado, []):-
			findall(ForerunnerFaccion, forerunnerFaccion(ForerunnerFaccion), ListaResultado).
		
		template([miembros, faccion, forerunner], ListaResultado, []):-
			findall(ForerunnerFaccion, forerunnerFaccion(ForerunnerFaccion), ListaResultado).
		
		template([miembros, de, la, faccion, forerunner], ListaResultado, []):-
			findall(ForerunnerFaccion, forerunnerFaccion(ForerunnerFaccion), ListaResultado).

		% faccion flood
		template([faccion, flood], ListaResultado, []):-
			findall(FloodFaccion, floodFaccion(FloodFaccion), ListaResultado).
		
		template([quien, es, faccion, flood], ListaResultado, []):-
			findall(FloodFaccion, floodFaccion(FloodFaccion), ListaResultado).
		
		template([quien, es, de, la, faccion, flood], ListaResultado, []):-
			findall(FloodFaccion, floodFaccion(FloodFaccion), ListaResultado).
		
		template([quienes, son, parte, de, la, faccion, flood], ListaResultado, []):-
			findall(FloodFaccion, floodFaccion(FloodFaccion), ListaResultado).
		
		template([miembros, faccion, flood], ListaResultado, []):-
			findall(FloodFaccion, floodFaccion(FloodFaccion), ListaResultado).
		
		template([miembros, de, la, faccion, flood], ListaResultado, []):-
			findall(FloodFaccion, floodFaccion(FloodFaccion), ListaResultado).

	% especies halo
	template([especies], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).
	
	template([dime, las, especies], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).
	
	template([dime, las, especies, de, halo], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).
	
	template([cuales, son, las, especies], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).

	template([cuales, son, las, especies, de, halo], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).
	
	template([hay, especies], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).

	template([hay, especies, en, halo], ListaResultado, []):-
		findall(Especies, especie(Especies), ListaResultado).

		% humanos
		template([humano], ListaResultado, []):-
			findall(Humano, humano(Humano), ListaResultado).
		
		template([humanos], ListaResultado, []):-
			findall(Humano, humano(Humano), ListaResultado).
		
		template([quien, es, humano], ListaResultado, []):-
			findall(Humano, humano(Humano), ListaResultado).

		% creado
		template([creado], ListaResultado, []):-
			findall(Creado, creado(Creado), ListaResultado).
		
		template([creados], ListaResultado, []):-
			findall(Creado, creado(Creado), ListaResultado).
		
		template([quien, es, creado], ListaResultado, []):-
			findall(Creado, creado(Creado), ListaResultado).
		
		% sangheili
		template([sangheili], ListaResultado, []):-
			findall(Sangheili, sangheili(Sangheili), ListaResultado).
		
		template([sangheilis], ListaResultado, []):-
			findall(Sangheili, sangheili(Sangheili), ListaResultado).
		
		template([quien, es, sangheili], ListaResultado, []):-
			findall(Sangheili, sangheili(Sangheili), ListaResultado).
		
		% forerunner
		template([forerunner], ListaResultado, []):-
			findall(Forerunner, forerunner(Forerunner), ListaResultado).
		
		template([forerunners], ListaResultado, []):-
			findall(Forerunner, forerunner(Forerunner), ListaResultado).
		
		template([quien, es, forerunner], ListaResultado, []):-
			findall(Forerunner, forerunner(Forerunner), ListaResultado).
		
		% jiralhanae
		template([jiralhanae], ListaResultado, []):-
			findall(Jiralhanae, jiralhanae(Jiralhanae), ListaResultado).
		
		template([jiralhanaes], ListaResultado, []):-
			findall(Jiralhanae, jiralhanae(Jiralhanae), ListaResultado).
		
		template([quien, es, jiralhanae], ListaResultado, []):-
			findall(Jiralhanae, jiralhanae(Jiralhanae), ListaResultado).
		
		% Kig_yar
		template([kig_yar], ListaResultado, []):-
			findall(Kig_yar, kig_yar(Kig_yar), ListaResultado).
		
		template([kig_yars], ListaResultado, []):-
			findall(Kig_yar, kig_yar(Kig_yar), ListaResultado).
		
		template([quien, es, kig_yar], ListaResultado, []):-
			findall(Kig_yar, kig_yar(Kig_yar), ListaResultado).
		
		% Unggoy
		template([unggoy], ListaResultado, []):-
			findall(Unggoy, unggoy(Unggoy), ListaResultado).
		
		template([unggoys], ListaResultado, []):-
			findall(Unggoy, unggoy(Unggoy), ListaResultado).
		
		template([quien, es, unggoy], ListaResultado, []):-
			findall(Unggoy, unggoy(Unggoy), ListaResultado).
		
		% san_shyuum
		template([san_shyuum], ListaResultado, []):-
			findall(San_shyuum, san_shyuum(San_shyuum), ListaResultado).
		
		template([san_shyuums], ListaResultado, []):-
			findall(San_shyuum, san_shyuum(San_shyuum), ListaResultado).
		
		template([quien, es, san_shyuum], ListaResultado, []):-
			findall(San_shyuum, san_shyuum(San_shyuum), ListaResultado).
		
		% flood
		template([flood], ListaResultado, []):-
			findall(Flood, flood(Flood), ListaResultado).
		
		template([floods], ListaResultado, []):-
			findall(Flood, flood(Flood), ListaResultado).
		
		template([quien, es, flood], ListaResultado, []):-
			findall(Flood, flood(Flood), ListaResultado).

	% estado de los personajes de halo
	template([estados], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).
	
	template([dime, los, estados], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).
	
	template([dime, los, estados, de, halo], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).
	
	template([cuales, son, los, estados], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).

	template([cuales, son, los, estados, de, halo], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).
	
	template([hay, estados], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).

	template([hay, estados, en, halo], ListaResultado, []):-
		findall(Estados, estado(Estados), ListaResultado).

		% activo
		template([activo], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).
		
		template([activos], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).
		
		template([personajes, activos], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).
		
		template([quienes, estan, activos], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).
		
		template([vivo], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).
		
		template([vivos], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).

		template([quienes, estan, vivos], ListaResultado, []):-
			findall(Activo, activo(Activo), ListaResultado).

		% muerto
		template([inactivo], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).
		
		template([inactivos], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).
		
		template([personajes, inactivos], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).
		
		template([quienes, estan, inactivos], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).
		
		template([muerto], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).
		
		template([muertos], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).

		template([quienes, estan, muertos], ListaResultado, []):-
			findall(Muerto, muerto(Muerto), ListaResultado).
		
		% desaparecidos
		template([desaparecido], ListaResultado, []):-
			findall(Desaparecido, desaparecido(Desaparecido), ListaResultado).
		
		template([desaparecidos], ListaResultado, []):-
			findall(Desaparecido, desaparecido(Desaparecido), ListaResultado).
		
		template([personajes, desaparecidos], ListaResultado, []):-
			findall(Desaparecido, desaparecido(Desaparecido), ListaResultado).
		
		template([quienes, estan, desaparecidos], ListaResultado, []):-
			findall(Desaparecido, desaparecido(Desaparecido), ListaResultado).

	% juegos de halo
	template([juegos], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).
	
	template([dime, los, juegos], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).
	
	template([dime, los, juegos, de, halo], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).
	
	template([cuales, son, los, juegos], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).

	template([cuales, son, los, juegos, de, halo], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).
	
	template([hay, juegos], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).

	template([hay, juegos, en, halo], ListaResultado, []):-
		findall(Juegos, juego(Juegos), ListaResultado).

		% haloCE
		template([halo, 1], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([halo, combat, evolved], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([halo, 1, personajes], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([halo, combat, evolved, personajes], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([personajes, de, halo, 1], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([personajes, de, halo, combat, evolved], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([quienes, aparecen, en, halo, 1], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
		
		template([quienes, aparecen, en, halo, combat, evolved], ListaResultado, []):-
			findall(Halo_combat_evolved, halo_combat_evolved(Halo_combat_evolved), ListaResultado).
			
		% halo 2
		template([halo, 2], ListaResultado, []):-
			findall(Halo_2, halo_2(Halo_2), ListaResultado).

		template([halo, 2, personajes], ListaResultado, []):-
			findall(Halo_2, halo_2(Halo_2), ListaResultado).
		
		template([personajes, de, halo, 2], ListaResultado, []):-
			findall(Halo_2, halo_2(Halo_2), ListaResultado).

		template([quienes, aparecen, en, halo, 2], ListaResultado, []):-
			findall(Halo_2, halo_2(Halo_2), ListaResultado).
		
		% halo 3
		template([halo, 3], ListaResultado, []):-
			findall(Halo_3, halo_3(Halo_3), ListaResultado).

		template([halo, 3, personajes], ListaResultado, []):-
			findall(Halo_3, halo_3(Halo_3), ListaResultado).
		
		template([personajes, de, halo, 3], ListaResultado, []):-
			findall(Halo_3, halo_3(Halo_3), ListaResultado).

		template([quienes, aparecen, en, halo, 3], ListaResultado, []):-
			findall(Halo_3, halo_3(Halo_3), ListaResultado).
			
	% personajes de halo
	template([personajes], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).
	
	template([dime, los, personajes], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).
	
	template([dime, los, personajes, de, halo], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).
	
	template([cuales, son, los, personajes], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).

	template([cuales, son, los, personajes, de, halo], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).
	
	template([hay, personajes], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).

	template([hay, personajes, en, halo], ListaResultado, []):-
		findall(Personajes, personaje(Personajes), ListaResultado).

	% templates comparativos
	% faccion
	template([s(_), es, una, faccion], [flagFaccion], [0]).
	template([s(_), es, de, la, unsc], [flagUNSC], [0]).
	template([s(_), es, unsc], [flagUNSC], [0]).
	template([s(_), es, del, covenant], [flagCovenant], [0]).
	template([s(_), es, covenant], [flagCovenant], [0]).
	template([s(_), es, un, hereje], [flagHereje], [0]).
	template([s(_), es, hereje], [flagHereje], [0]).
	template([s(_), es, un, forerunner, faccion], [flagforerunnerFaccion], [0]).
	template([s(_), es, forerunner, faccion], [flagforerunnerFaccion], [0]).
	template([s(_), es, un, flood, faccion], [flagfloodFaccion], [0]).	
	template([s(_), es, flood, faccion], [flagfloodFaccion], [0]).	
	% especie
	template([s(_), es, una, especie], [flagEspecie], [0]).
	template([s(_), es, un, humano], [flagHumano], [0]).
	template([s(_), es, humano], [flagHumano], [0]).
	template([s(_), es, un, creado], [flagCreado], [0]).
	template([s(_), es, creado], [flagCreado], [0]).
	template([s(_), es, un, sangheili], [flagSangheili], [0]).
	template([s(_), es, sangheili], [flagSangheili], [0]).
	template([s(_), es, un, forerunner], [flagforerunner], [0]).
	template([s(_), es, forerunner], [flagforerunner], [0]).
	template([s(_), es, un, jiralhanae], [flagJiralhanae], [0]).
	template([s(_), es, jiralhanae], [flagJiralhanae], [0]).
	template([s(_), es, un, kig_yar], [flagKig_yar], [0]).
	template([s(_), es, kig_yar], [flagKig_yar], [0]).
	template([s(_), es, un, unggoy], [flagUnggoy], [0]).
	template([s(_), es, unggoy], [flagUnggoy], [0]).
	template([s(_), es, un, san_shyuum], [flagSan_shyuum], [0]).
	template([s(_), es, san_shyuum], [flagSan_shyuum], [0]).
	template([s(_), es, un, flood], [flagFlood], [0]).
	template([s(_), es, flood], [flagFlood], [0]).
	% estado
	template([s(_), esta, activo], [flagActivo], [0]).
	template([s(_), esta, vivo], [flagActivo], [0]).
	template([s(_), esta, muerto], [flagMuerto], [0]).
	template([s(_), esta, inactivo], [flagMuerto], [0]).
	template([s(_), esta, desaparecido], [flagDesaparecido], [0]).
	% juegos
	template([s(_), es, un, juego], [flagJuego], [0]).
	template([s(_), esta, en, halo_combat_evolved], [flagHaloCE], [0]).
	template([s(_), aparece, en, halo_combat_evolved], [flagHaloCE], [0]).
	template([s(_), esta, en, halo_2], [flagHalo2], [0]).
	template([s(_), aparece, en, halo_2], [flagHalo2], [0]).
	template([s(_), esta, en, halo_3], [flagHalo3], [0]).
	template([s(_), aparece, en, halo_3], [flagHalo3], [0]).
	% personajes
	template([s(_), es, un, personaje], [flagPersonaje], [0]).
	% info halo
	template([halo], ['"Halo" es una franquicia de ciencia ficción que abarca videojuegos, novelas, cómics y otros medios, creada por Bungie y desarrollada actualmente por 343 Industries. El nombre se refiere principalmente a los anillos gigantes conocidos como "Halo", construidos por una antigua y misteriosa raza alienígena conocida como los forerunners. Estos anillos tienen la capacidad de destruir toda forma de vida a nivel galáctico para prevenir la propagación de una amenaza particular.'], []).
	template([que, es, halo], ['"Halo" es una franquicia de ciencia ficción que abarca videojuegos, novelas, cómics y otros medios, creada por Bungie y desarrollada actualmente por 343 Industries. El nombre se refiere principalmente a los anillos gigantes conocidos como "Halo", construidos por una antigua y misteriosa raza alienígena conocida como los forerunners. Estos anillos tienen la capacidad de destruir toda forma de vida a nivel galáctico para prevenir la propagación de una amenaza particular.'], []).
	template([hablame, de, halo], ['"Halo" es una franquicia de ciencia ficción que abarca videojuegos, novelas, cómics y otros medios, creada por Bungie y desarrollada actualmente por 343 Industries. El nombre se refiere principalmente a los anillos gigantes conocidos como "Halo", construidos por una antigua y misteriosa raza alienígena conocida como los forerunners. Estos anillos tienen la capacidad de destruir toda forma de vida a nivel galáctico para prevenir la propagación de una amenaza particular.'], []).

	% templates default
	template(_, ['No te he comprendido, asegurate de escribir correctamente las palabras.
Si no estas seguro de lo que estas haciendo escribe "indice de activacion" para obtener un glosario reducido.'], []). 

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
	faccionIs(X, R):- faccion(X), R = [si, X, es, una, faccion].
   	faccionIs(X, R):- \+faccion(X), R = [X, no, es, una, faccion].
	faccion('UNSC').
	faccion('Covenant').
	faccion('Herejes').
	faccion('forerunner').
	faccion('Flood').
		% UNSC
		unscIs(X, R):- unsc(X), R = [si, X, es, de, la, unsc].
   		unscIs(X, R):- \+unsc(X), R = [X, no, es, de, la, unsc].
		unsc('jonh_117').
		unsc('cortana').
		unsc('avery_jonhson').
		unsc('jacob_keyes').
		unsc('chipps_dubbo').
		unsc('miranda_keyes').
		unsc('edward_buck').
		% Covenant
		covenantIs(X, R):- covenant(X), R = [si, X, es, del, covenant].
   		covenantIs(X, R):- \+covenant(X), R = [X, no, es, del, covenant].
		covenant('Yayap').
		covenant('Rtas_Vadum').
		covenant('inquisidor').
		covenant('tartarus').
		covenant('Maccabeus').
		covenant('Yeg_Ranem').
		covenant('Lepidus').
		covenant('piedad').
		covenant('pesar').
		covenant('verdad').
		% Hereje
		herejeIs(X, R):- hereje(X), R = [si, X, es, hereje].
   		herejeIs(X, R):- \+hereje(X), R = [X, no, es, hereje].
		hereje('sesa_Refumee').
		% forerunner
		forerunnerFaccionIs(X, R):- forerunnerFaccion(X), R = [si, X, es, forerunner].
   		forerunnerFaccionIs(X, R):- \+forerunnerFaccion(X), R = [X, no, es, forerunner].
		forerunnerFaccion('guilty_spark').
		forerunnerFaccion('penitent_tangent').
		% Flood
		floodFaccionIs(X, R):- floodFaccion(X), R = [si, X, es, flood].
   		floodFaccionIs(X, R):- \+floodFaccion(X), R = [X, no, es, flood].
		floodFaccion('gravemind').
		floodFaccion('protogravemind').

	% Especies de Halo
	especieIs(X, R):- especie(X), R = [si, X, es, una, especie].
   	especieIs(X, R):- \+especie(X), R = [X, no, es, una, especie].
	especie('humano').
	especie('creado').
	especie('sangheili').
	especie('forerunner').
	especie('jiralhanae').
	especie('kig_yar').
	especie('unggoy').
	especie('san_shyuum').
	especie('flood').		
		% Humanos
		humanoIs(X, R):- humano(X), R = [si, X, es, un, humano].
   		humanoIs(X, R):- \+humano(X), R = [X, no, es, un, humano].
		humano('jonh_117').
		humano('avery_jonhson').
		humano('jacob_keyes').
		humano('chipps_dubbo').
		humano('miranda_keyes').
		humano('edward_buck').
		% creado
		creadoIs(X, R):- creado(X), R = [si, X, es, un, creado].
   		creadoIs(X, R):- \+creado(X), R = [X, no, es, un, creado].
		creado('cortana').
		% sangheili
		sangheiliIs(X, R):- sangheili(X), R = [si, X, es, un, sangheili].
   		sangheiliIs(X, R):- \+sangheili(X), R = [X, no, es, un, sangheili].
		sangheili('rtas_vadum').
		sangheili('inquisidor').
		sangheili('sesa_refumee').
		% forerunner
		forerunnerIs(X, R):- forerunner(X), R = [si, X, es, un, forerunner].
   		forerunnerIs(X, R):- \+forerunner(X), R = [X, no, es, un, forerunner].
		forerunner('guilty_spark').
		forerunner('penitent_tangent').
		% jiralhanae
		jiralhanaeIs(X, R):- jiralhanae(X), R = [si, X, es, un, jiralhanae].
   		jiralhanaeIs(X, R):- \+jiralhanae(X), R = [X, no, es, un, jiralhanae].
		jiralhanae('tartarus').
		% kig_yar
		kig_yarIs(X, R):- kig_yar(X), R = [si, X, es, un, kig_yar].
   		kig_yarIs(X, R):- \+kig_yar(X), R = [X, no, es, un, kig_yar].
		kig_yar('yeg_ranem').
		kig_yar('lepidus').
		% unggoy
		unggoyIs(X, R):- unggoy(X), R = [si, X, es, un, unggoy].
   		unggoyIs(X, R):- \+unggoy(X), R = [X, no, es, un, unggoy].
		unggoy('yayap').
		% san_shyuum
		san_shyuumIs(X, R):- san_shyuum(X), R = [si, X, es, un, san_shyuum].
   		san_shyuumIs(X, R):- \+san_shyuum(X), R = [X, no, es, un, san_shyuum].
		san_shyuum('piedad').
		san_shyuum('pesar').
		san_shyuum('verdad').
		% flood
		floodIs(X, R):- flood(X), R = [si, X, es, un, flood].
   		floodIs(X, R):- \+flood(X), R = [X, no, es, un, flood].
		flood('gravemind').
		flood('protogravemind').

	% Status de los personajes de Halo
	estado('activo').
	estado('muerto').
	estado('desaparecido').
		% activo
		activoIs(X, R):- activo(X), R = [si, X, esta, activo].
   		activoIs(X, R):- \+activo(X), R = [X, no, esta, activo].
		activo('jonh_117').
		activo('Rtas_Vadum').
		activo('inquisidor').
		activo('gravemind').
		activo('edward_buck').
		activo('yayap').
		activo('chipps_dubbo').
		% muerto
		muertoIs(X, R):- muerto(X), R = [si, X, esta, muerto].
   		muertoIs(X, R):- \+muerto(X), R = [X, no, esta, muerto].
		muerto('cortana').
		muerto('avery_jonhson').
		muerto('jacob_keyes').
		muerto('miranda_keyes').
		muerto('guilty_spark').
		muerto('tartarus').
		muerto('protogravemind').
		muerto('maccabeus').
		muerto('yeg_ranem').
		muerto('lepidus').
		muerto('piedad').
		muerto('pesar').
		muerto('verdad').
		muerto('Sesa_Refumee').
		% desaparecido
		desaparecidoIs(X, R):- desaparecido(X), R = [si, X, esta, desaparecido].
   		desaparecidoIs(X, R):- \+desaparecido(X), R = [X, no, esta, desaparecido].
		desaparecido('penitent_tangent').


		
	% Primera aparicion de los personajes de Halo
	juegoIs(X, R):- juego(X), R = [si, X, es, un, juego].
   	juegoIs(X, R):- \+juego(X), R = [X, no, es, un, juego].
	juego('halo_combat_evolved').
	juego('halo_2').
	juego('halo_3').
		% halo_combat_evolved
		halo_combat_evolvedIs(X, R):- halo_combat_evolved(X), R = [si, X, esta, en, halo_combat_evolved].
   		halo_combat_evolvedIs(X, R):- \+halo_combat_evolved(X), R = [X, no, esta, en, halo_combat_evolved].
		halo_combat_evolved('jonh_117').
		halo_combat_evolved('cortana').
		halo_combat_evolved('avery_jonhson').
		halo_combat_evolved('jacob_keyes').
		halo_combat_evolved('chipps_dubbo').
		halo_combat_evolved('guilty_spark').
		halo_combat_evolved('protogravemind').
		% halo_2
		halo_2Is(X, R):- halo_2(X), R = [si, X, esta, en, halo_2].
   		halo_2Is(X, R):- \+halo_2(X), R = [X, no, esta, en, halo_2].
		halo_2('jonh_117').
		halo_2('cortana').
		halo_2('avery_jonhson').
		halo_2('chipps_dubbo').
		halo_2('guilty_spark').
		halo_2('miranda_keyes').
		halo_2('Rtas_Vadum').
		halo_2('inquisidor').
		halo_2('tartarus').
		halo_2('gravemind').
		halo_2('sesa_refumee').
		halo_2('penitent_tangent').
		halo_2('maccabeus').
		halo_2('edward_buck').
		halo_2('yeg_ranem').
		halo_2('lepidus').
		halo_2('piedad').
		halo_2('pesar').
		halo_2('verdad').
		% halo_3
		halo_3Is(X, R):- halo_3(X), R = [si, X, esta, en, halo_3].
   		halo_3Is(X, R):- \+halo_3(X), R = [X, no, esta, en, halo_3].
		halo_3('jonh_117').
		halo_3('cortana').
		halo_3('avery_jonhson').
		halo_3('chipps_dubbo').
		halo_3('guilty_spark').
		halo_3('miranda_keyes').
		halo_3('Rtas_Vadum').
		halo_3('inquisidor').
		halo_3('gravemind').
		halo_3('yeg_ranem').
		halo_3('lepidus').
		halo_3('verdad').
		halo_3('yayap').

	% Peronsajes de Halo (Solo algunos)
	personajeIs(X, R):- personaje(X), R = [si, X, es, un, personaje].
   	personajeIs(X, R):- \+personaje(X), R = [X, no, es, un, personaje].
	personaje('jonh_117').
	personaje('cortana').
	personaje('avery_jonhson').
	personaje('jacob_keyes').
	personaje('chipps_dubbo').
	personaje('yayap').
	personaje('miranda_keyes').
	personaje('rtas_vadum').
	personaje('guilty_spark').
	personaje('inquisidor').
	personaje('tartarus').
	personaje('gravemind').
	personaje('protogravemind').
	personaje('Sesa_Refumee').
	personaje('penitent_tangent').
	personaje('maccabeus').
	personaje('edward_buck ').
	personaje('yeg_ranem ').
	personaje('lepidus').
	personaje('piedad').
	personaje('pesar').
	personaje('verdad').

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

	% HALO FLAGAS
	% especie
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEspecie,
		escpecieIs(Atom, R).
	% humano
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHumano,
		humanoIs(Atom, R).
	% creado
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCreado,
		creadoIs(Atom, R).
	% humano
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagSangheili,
		san_shyuumIs(Atom, R).
	% forerunner
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagforerunner,
		forerunnerIs(Atom, R).
	% jiralhanae
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagJiralhanae,
		jiralhanaeIs(Atom, R).
	% kig_yar
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagKig_yar,
		kig_yarIs(Atom, R).
	% unggoy
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagUnggoy,
		unggoyIs(Atom, R).
	% san_shyuum
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagSan_shyuum,
		san_shyuumIs(Atom, R).
	% flood
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagFlood,
		floodIs(Atom, R).
	% faccion
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagFaccion,
		faccionIsIs(Atom, R).
	% unsc
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagUNSC,
		unscIs(Atom, R).
	% covenant
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCovenant,
		covenantIs(Atom, R).
	% herejes
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHereje,
		herejeIs(Atom, R).
	% forerunner
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagforerunnerFaccion,
		forerunnerFaccionIs(Atom, R).
	% flood
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagfloodFaccion,
		floodFaccionIs(Atom, R).
	% activo
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagActivo,
		activoIs(Atom, R).
	% muerto
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagMuerto,
		muertoIs(Atom, R).
	% desaparecido
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDesaparecido,
		desaparecidoIs(Atom, R).
	% halo_combat_evolved
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagJuego,
		juegoIs(Atom, R).
	% halo_combat_evolved
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHaloCE,
		halo_combat_evolvedIs(Atom, R).
	% halo_2
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHalo2,
		halo_2Is(Atom, R).
	% halo_3
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagHalo3,
		halo_3Is(Atom, R).
	% personaje
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPersonaje,
		personajeIs(Atom, R).