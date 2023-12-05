# DESCRIPCION:
## Se define la función "prismaRectangular" que solicita al usuario la medida de la base (variable a), la medida del ancho (variable b) y la altura (variable c). Con estas medidas se utiliza una función lambda "calcular-volumen" para calcular el volumen del prisma rectangular, multiplicando el área inicial (producto de la base y el ancho) por la altura.
~~~
(defun prismaRectangular ()
	(print "Estamos calculando el volumen de un prisma rectangular, dame la medida de la base: ")
	(setq a (read))
	(print "Dame la medida del ancho: ")
	(setq b (read))
	(print "Dame la medida de la altura: ")
	(setq c (read))
	(setq calcular-volumen (lambda () (* (* a b) c)))
	(funcall calcular-volumen)
)
~~~
