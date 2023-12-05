# DESCRIPCION:
## Se define la funcion "cono" esperando dos variables dadas por el usuario, La primera de toma como el radio; multiplicandose por si mismo para obtener el cuadraro, luego por pi, multiplicaomos por la altura y dividimos entre 3
~~~
(defun cono ()
	(print "Estamos calculando el volumen de un cono, dame la medida del radio: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	( / ( * ( * ( * a a ) b ) 3.1416 ) 3 )
	)
~~~

	
