(defun rombo ()
	(print "Estamos calculando el area de un rombo, dame la medida de la diagonal mayor: ")
	(setq a (read))
	(print "dame la medida de la diagonal menor: ")
	(setq b (read))
	(/ (* a b) 2)
	)


	;DESCRIPCION:
	;Se define la funcion "rombo" esperando dos variables dadas por el usuario, se multiplican, se dividen entre 2 y luego se imprime el resultado