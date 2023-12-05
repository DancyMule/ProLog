# DESCRIPCION:
## Se define la función "hexagono" que solicita al usuario dos medidas: el perímetro (variable a) y la apotema (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del hexágono, multiplicando el perímetro por la apotema y dividiendo el resultado entre 2. El área se imprime.
~~~
(defun hexagono ()
	(print "Estamos calculando el área de un hexágono, dame la medida del perímetro: ")
	(setq a (read))
	(print "Dame la medida del apotema: ")
	(setq b (read))
	(setq calcular-area (lambda () (/ (* a b) 2)))
	(funcall calcular-area)
)
~~~