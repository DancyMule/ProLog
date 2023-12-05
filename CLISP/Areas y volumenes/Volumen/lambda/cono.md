# DESCRIPCION:
## Se define la función "cono" que solicita al usuario dos medidas: el radio (variable a) y la altura (variable b). Luego se utiliza una función lambda "calcular-volumen" para calcular el volumen del cono, multiplicando el cuadrado del radio por la altura, luego por 3.1416 y finalmente dividiendo el resultado entre 3. El volumen se imprime.
~~~
(defun cono ()
	(print "Estamos calculando el volumen de un cono, dame la medida del radio: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	(setq calcular-volumen (lambda () (/ (* (* (* a a) b) 3.1416) 3)))
	(funcall calcular-volumen)
)
~~~