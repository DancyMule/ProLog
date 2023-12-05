# DESCRIPCION:
## Se define la función "cubo" que solicita al usuario la medida de un lado (variable a). Luego se utiliza una función lambda "calcular-volumen" para calcular el volumen del cubo, multiplicando la medida del lado por sí misma dos veces.
~~~
(defun cubo ()
	(print "Estamos calculando el volumen de un cubo, dame la medida de un lado: ")
	(setq a (read))
	(setq calcular-volumen (lambda () (* (* a a) a)))
	(funcall calcular-volumen)
)
~~~
