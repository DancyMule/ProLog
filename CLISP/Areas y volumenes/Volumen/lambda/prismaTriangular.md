# DESCRIPCION:
## Se define la función "prismaTriangular" que solicita al usuario la medida de la base (variable a), la altura de un lado (variable b) y la altura del prisma (variable c). Con estas medidas se utiliza una función lambda "calcular-volumen" para calcular el volumen del prisma triangular, multiplicando el área del triángulo (producto de la base y la altura de un lado dividido por 2) por la altura del prisma.
~~~
(defun prismaTriangular ()
	(print "Estamos calculando el volumen de un prisma triangular, dame la medida de la base: ")
	(setq a (read))
    (print "Dame la medida de la altura de un lado: ")
	(setq b (read))
    (print "Dame la medida de la altura del prisma: ")
	(setq c (read))
	(setq calcular-volumen (lambda () (* (/ (* a b) 2) c)))
	(funcall calcular-volumen)
)
~~~
