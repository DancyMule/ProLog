# DESCRIPCION:
## Se define la función "rombo" que solicita al usuario dos medidas: la diagonal mayor (variable a) y la diagonal menor (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del rombo, multiplicando la diagonal mayor por la diagonal menor y dividiendo el resultado entre 2. El área se imprime.
~~~
(defun rombo ()
	(print "Estamos calculando el área de un rombo, dame la medida de la diagonal mayor: ")
	(setq a (read))
	(print "Dame la medida de la diagonal menor: ")
	(setq b (read))
	(setq calcular-area (lambda () (/ (* a b) 2)))
	(funcall calcular-area)
)
~~~