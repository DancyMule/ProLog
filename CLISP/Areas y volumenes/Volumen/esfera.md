# DESCRIPCION:
## Se define la funcion "esfera" esperando una variable dada por el usuario,Al ser una esfera, se asume que habrá el mismo radio en todas direcciones asi que la variable se reutiliza (Ya que normalmente se usaria radio mayor y radio menor). obtenemos el cuadrado del radio, lo multiplicamos otra vez por si mismo, luego por pi y finalmente por 1.33
~~~
(defun esfera ()
	(print "Estamos calculando el volumen de un esfera, dame la medida del radio: ")
	(setq a (read))
	( * ( * ( * ( * a a ) a ) 3.1416 ) 1.33 )
	)
~~~

	
