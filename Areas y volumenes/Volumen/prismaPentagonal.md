# DESCRIPCION:
## Se define la funcion "prismaPentagonal" esperando tres variables dadas por el usuario, con la primer variable obtenemos el lado y con la segunda el apotema, sabemos que es un hexagono asi que multiplicamos lado por 5 y luego por el apotema. Esto lo multiplicamos por la altura y con eso obtendremos el volumen
~~~
(defun prismaPentagonal ()
	(print "Estamos calculando el volumen de un prisma pentagonal, dame la medida de un lado: ")
	(setq a (read))
    (print "Dame la medida del apotema: ")
	(setq b (read))
	(print "Dame la medida de la altura: ")
	(setq c (read))
	( * (* ( * a 5 )( + b c )) c )
	)
~~~

	
