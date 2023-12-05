# DESCRIPCION:
## Se define la función "prismaHexagonal" que solicita al usuario la medida de un lado (variable a), la medida del apotema (variable b) y la altura (variable c). Con estas medidas se utiliza una función lambda "calcular-volumen" para calcular el volumen del prisma hexagonal, multiplicando el lado por 6, luego por el apotema y finalmente por la altura.
~~~
(defun prismaHexagonal ()
	(print "Estamos calculando el volumen de un prisma hexagonal, dame la medida de un lado: ")
	(setq a (read))
    (print "Dame la medida del apotema: ")
	(setq b (read))
	(print "Dame la medida de la altura: ")
	(setq c (read))
	(setq calcular-volumen (lambda () (* (* (* a 6) b) c)))
	(funcall calcular-volumen)
)
~~~
