# DESCRIPCION:
## Se define la funcion "prismaPiramidal" esperando dos variables dadas por el usuario, multiplicaremos la primera por si misma para obtener la base, luego por la altura y finalmente dividimos entre 3
~~~
(defun prismaPiramidal ()
	(print "Estamos calculando el volumen de un prisma piramidal, dame la medida de un lado de la base: ")
	(setq a (read))
	(print "Dame la medida de la altura
    : ")
    (setq b (read))
	( / ( * ( * a a ) b ) 3)
	)
~~~

	
