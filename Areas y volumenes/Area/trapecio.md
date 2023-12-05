# DESCRIPCION:
## Se define la funcion "trapecio" esperando tres variables dadas por el usuario, se suman las primeras don, se multiplican por la tercera, se dividen entre 2 y luego se imprime el resultado
~~~
(defun trapecio ()
	(print "Estamos calculando el area de un trapecio, dame la medida de la base mayor: ")
	(setq a (read))
	(print "dame la medida de la base menor: ")
	(setq b (read))
	(print "dame la medida de la altura: ")
	(setq c (read))
	( / ( * (+ a b) c) 2 )
	)
~~~
	
