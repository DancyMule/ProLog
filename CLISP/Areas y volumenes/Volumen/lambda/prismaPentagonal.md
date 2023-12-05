# DESCRIPCION:
## Se define la función "prismaPentagonal" que solicita al usuario la medida de un lado (variable a), la medida del apotema (variable b) y la altura (variable c). Con estas medidas se utiliza una función lambda "calcular-volumen" para calcular el volumen del prisma pentagonal, multiplicando el lado por 5, sumando el producto del apotema y la altura, y finalmente multiplicando por la altura.
~~~
(defun prismaPentagonal ()
	(print "Estamos calculando el volumen de un prisma pentagonal, dame la medida de un lado: ")
	(setq a (read))
    (print "Dame la medida del apotema: ")
	(setq b (read))
	(print "Dame la medida de la altura: ")
	(setq c (read))
	(setq calcular-volumen (lambda () (* (* a 5) (+ b c) c)))
	(funcall calcular-volumen)
)
~~~
