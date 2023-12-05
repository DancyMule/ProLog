#DESCRIPCION:
## Se define la funcion "triangulo" esperando tres variables dadas por el usuario, se suman las primeras don, se multiplican por la tercera, se dividen entre 2 y luego se imprime el resultado
 ~~~
(defun triangulo ()
	(print "Estamos calculando el area de un triangulo, dame la medida de la base: ")
	(setq a (read))
	(print "Dame la medida de la altura: ")
	(setq b (read))
	( / (* a b) 2 )
	)
~~~
	
