# DESCRIPCION:
## Se define la funcion "prismaTriangular", donde esperamos 3 variables dadas por el usuario. Las primeras dos las multiplicamos y al producto lo dividimos entre 2, con esto obtendremos el area del triangulo, esto lo multiplicamos por la altura y obtendremos el volumen
~~~
(defun prismaTriangular ()
	(print "Estamos calculando el volumen de un prisma triangular, dame la medida de la base: ")
	(setq a (read))
    (print "Dame la medida de la altura de un lado: ")
	(setq b (read))
    (print "Dame la medida de la altura del prisma: ")
	(setq c (read))
	( * ( / ( * a b ) 2 ) c )
	)
~~~
	
