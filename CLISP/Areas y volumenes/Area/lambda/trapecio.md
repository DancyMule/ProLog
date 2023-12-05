# DESCRIPCION:
## Se define la función "trapecio" que solicita al usuario tres medidas: la base mayor (variable a), la base menor (variable b) y la altura (variable c). Luego se utiliza una función lambda "calcular-area" para calcular el área del trapecio, sumando las bases, multiplicando por la altura y dividiendo el resultado entre 2. El área se imprime.
~~~
(defun trapecio ()
	(print "Estamos calculando el área de un trapecio, dame la medida de la base mayor: ")
	(setq a (read))
	(print "Dame la medida de la base menor: ")
	(setq b (read))
	(print "Dame la medida de la altura: ")
	(setq c (read))
	(setq calcular-area (lambda () (/ (* (+ a b) c) 2)))
	(funcall calcular-area)
)
~~~