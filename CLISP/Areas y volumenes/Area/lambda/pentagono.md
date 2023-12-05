# DESCRIPCION:
## Se define la función "pentagono" que solicita al usuario dos medidas: el perímetro (variable a) y la apotema (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del pentágono, multiplicando el perímetro por la apotema y dividiendo el resultado entre 2. El área se imprime.
~~~
(defun pentagono ()
	(print "Estamos calculando el área de un pentágono, dame la medida del perímetro: ")
	(setq a (read))
	(print "Dame la medida del apotema: ")
	(setq b (read))
	(setq calcular-area (lambda () (/ (* a b) 2)))
	(funcall calcular-area)
)
~~~