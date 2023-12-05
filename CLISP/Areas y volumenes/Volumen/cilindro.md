(defun cilindro ()
	(print "Estamos calculando el volumen de un cilindro, dame la medida del radio: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	( * ( * ( * a a ) b ) 3.1416 )
	)

	;DESCRIPCION:
	;Se define la funcion "cilindro" esperando dos variables dadas por el usuario, La primera de toma como el radio; multiplicandose por si mismo para obtener el cuadraro, luego por pi y finalmnete por la altura