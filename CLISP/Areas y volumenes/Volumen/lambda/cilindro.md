# DESCRIPCION:
## Se define la función "cilindro" que solicita al usuario dos medidas: el radio (variable a) y la altura (variable b). Luego se utiliza una función lambda "calcular-volumen" para calcular el volumen del cilindro, multiplicando el cuadrado del radio por la altura y luego por 3.1416. El volumen se imprime.
~~~
(defun cilindro ()
	(print "Estamos calculando el volumen de un cilindro, dame la medida del radio: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	(setq calcular-volumen (lambda () (* (* (* a a) b) 3.1416)))
	(funcall calcular-volumen)
)
~~~