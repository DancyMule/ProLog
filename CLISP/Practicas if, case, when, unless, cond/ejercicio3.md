# Descripción:
## La función "vocalSemi" solicita al usuario ingresar una letra y determina si la letra es una vocal, una semivocal o una consonante. La función utiliza la función 'case' para realizar esta evaluación y luego imprime el resultado.

~~~
(defun vocalSemi (letra)
    (format t "Ingresa una letra: ")
    (setq letra (read))
    (setq resultado (vocalSemi letra))
    (case letra
        ((#\a #\e #\i #\o #\u) (format t "La letra ~c es una vocal.~%"))
        (#\y (format t "La letra ~c es una semivocal.~%"))
        (t (format t "La letra ~c es una consonante.~%"))
    )
)
~~~