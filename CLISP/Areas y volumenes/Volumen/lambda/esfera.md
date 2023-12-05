# DESCRIPCION:
## Se define la función "esfera" que solicita al usuario la medida del radio (variable a). Al ser una esfera, se asume que hay el mismo radio en todas direcciones, por lo que la variable se reutiliza. Se utiliza una función lambda "calcular-volumen" para calcular el volumen de la esfera, multiplicando el cuadrado del radio por sí mismo, luego por pi y finalmente por 1.33.
~~~
(defun esfera ()
	(print "Estamos calculando el volumen de una esfera, dame la medida del radio: ")
	(setq a (read))
	(setq calcular-volumen (lambda () (* (* (* (* a a) a) 3.1416) 1.33)))
	(funcall calcular-volumen)
)
~~~
