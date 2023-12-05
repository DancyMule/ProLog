# DESCRIPCION:
## Se define la función "triangulo" que solicita al usuario dos medidas: la base (variable a) y la altura (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del triángulo, multiplicando la base por la altura y dividiendo el resultado entre 2. El área se imprime.
~~~
(defun triangulo ()
	(print "Estamos calculando el área de un triángulo, dame la medida de la base: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	(setq calcular-area (lambda () (/ (* a b) 2)))
	(funcall calcular-area)
)
~~~