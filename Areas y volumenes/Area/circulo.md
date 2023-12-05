##DESCRIPCION: Se define la funcion "circulo" esperando una variable dada por el usuario, se multiplica por sí mismo, para obtener el cuadrado del radio, luego por 3.1416 y luego se imprime el resultado
~~~
(defun circulo ()
	(print "Estamos calculando el area de un circulo, dame el radio: ")
	(setq a (read))
	(setq res (* (* a a) 3.1416 ))
	)
~~~	
