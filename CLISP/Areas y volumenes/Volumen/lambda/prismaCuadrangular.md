# DESCRIPCION:
## Se define la función "prismaCuadrangular" que solicita al usuario la medida de un lado (variable a) y la altura (variable b). Con estas medidas se utiliza una función lambda "calcular-volumen" para calcular el volumen del prisma cuadrangular, multiplicando el cuadrado del lado por la altura.
~~~
(defun prismaCuadrangular ()
	(print "Estamos calculando el volumen de un prisma cuadrangular, dame la medida de un lado: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	(setq calcular-volumen (lambda () (* (* a a) b)))
	(funcall calcular-volumen)
)
~~~
