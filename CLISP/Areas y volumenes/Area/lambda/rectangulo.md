# DESCRIPCION:
## Se define la función "rectangulo" que solicita al usuario dos medidas: la base (variable a) y la altura (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del rectángulo, multiplicando la base por la altura. El área se imprime.
~~~
(defun rectangulo ()
	(print "Estamos calculando el área de un rectángulo, dame la medida de la base: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	(setq calcular-area (lambda () (* a b)))
	(funcall calcular-area)
)
~~~