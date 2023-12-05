# DESCRIPCION:
## Se define la funcion "ovalo" esperando dos variables dadas por el usuario, se multiplican entre ellas, se multiplcian por 3.1416 y luego se imprime el resultado~~~
(defun ovalo ()
	(print "Estamos calculando el area de un ovalo, dame la medida del radio mayor: ")
	(setq a (read))
	(print "Dame la medida del radio menor: ")
	(setq b (read))
	(* (* a b) 3.1416)
	)
~~~
	
