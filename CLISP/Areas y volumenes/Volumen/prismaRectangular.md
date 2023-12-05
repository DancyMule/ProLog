# DESCRIPCION:
## Se define la funcion "prismaRectangular", similar al prisma cuadrangular, pero aqui requerimos tres variables dadas por el usuario, multiplicamos las primeras dos y obtenemos el area inicial eso lo multuplicamos por la altura y obtendremos el volumen 
~~~
(defun prismaRectangular ()
	(print "Estamos calculando el volumen de un prisma rectangular, dame la medida de la base: ")
	(setq a (read))
	(print "Dame la medida del ancho: ")
	(setq b (read))
	(print "Dame la medida de la altura: ")
	(setq c (read))
	( * ( * a b ) c)
	)
~~~
	
