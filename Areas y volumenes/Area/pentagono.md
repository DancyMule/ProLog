# DESCRIPCION:
## Se define la funcion "pentagono" esperando dos variables dada por el usuario, se multiplican se dividen entre 2 y luego se imprime el resultado
~~~
(defun pentagono ()
	(print "Estamos calculando el area de un pentagono, dame la medida del perimetro: ")
	(setq a (read))
	(print "dame la medida del apotema: ")
	(setq b (read))
	(/ (* a b) 2)
	)
~~~
	
