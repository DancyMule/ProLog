(defun hexagono ()
	(print "Estamos calculando el area de un hexagono, dame la medida del perimetro: ")
	(setq a (read))
	(print "Dame la medida del apotema: ")
	(setq b (read))
	(/ (* a b) 2)
	)
	;DESCRIPCION:
	;Se define la funcion "hexagono" esperando dos variables dada por el usuario, se multiplican se dividen entre 2 y luego se imprime el resultado