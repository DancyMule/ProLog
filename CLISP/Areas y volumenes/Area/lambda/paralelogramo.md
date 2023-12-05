# DESCRIPCION:
## Se define la función "paralelogramo" que solicita al usuario dos medidas: la base (variable a) y la altura (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del paralelogramo, multiplicando la base por la altura. El resultado se imprime.
~~~
(defun paralelogramo()
	(print "Estamos calculando el área de un paralelogramo, dame la medida de la base: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	(setq calcular-area (lambda () (* a b)))
	(funcall calcular-area)
)
~~~