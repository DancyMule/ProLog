# DESCRIPCION:
## Se define la función "prismaPiramidal" que solicita al usuario la medida de un lado de la base (variable a) y la medida de la altura (variable b). Con estas medidas se utiliza una función lambda "calcular-volumen" para calcular el volumen del prisma piramidal, multiplicando el cuadrado del lado por la altura y finalmente dividiendo entre 3.
~~~
(defun prismaPiramidal ()
	(print "Estamos calculando el volumen de un prisma piramidal, dame la medida de un lado de la base: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
    (setq b (read))
	(setq calcular-volumen (lambda () (/ (* (* a a) b) 3)))
	(funcall calcular-volumen)
)
~~~
