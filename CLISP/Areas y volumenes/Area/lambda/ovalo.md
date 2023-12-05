# DESCRIPCION:
## Se define la función "ovalo" que solicita al usuario dos medidas: el radio mayor (variable a) y el radio menor (variable b). Luego se utiliza una función lambda "calcular-area" para calcular el área del óvalo, multiplicando el radio mayor por el radio menor y luego por 3.1416. El resultado se imprime.
~~~
(defun ovalo ()
	(print "Estamos calculando el área de un óvalo, dame la medida del radio mayor: ")
	(setq a (read))
	(print "Dame la medida del radio menor: ")
	(setq b (read))
	(setq calcular-area (lambda () (* (* a b) 3.1416)))
	(funcall calcular-area)
)
~~~