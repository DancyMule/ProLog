% Definición de eliza/0
eliza :-
    writeln('Hola, soy Eliza, tu chatbot.'),
    writeln('Â¿En quÃ© puedo ayudarte?'),
    % Aquí puedes incluir la lógica de interacción del chatbot.
    % Puedes usar `readln/1` para obtener la entrada del usuario y procesarla.
    readln(_),
    template([lista, de, animales], ListaResultado),
    writeln('Aquí tienes la lista de animales:'),
    writeln(ListaResultado),
    writeln('Gracias por conversar conmigo. Â¡Hasta luego!').

% Hechos unarios sobre animales
animal(gato).
animal(perro).
animal(pajaro).

% Template para obtener una lista de animales
template([lista, de, animales], ListaAnimales) :-
    findall(Animal, animal(Animal), ListaAnimales).

