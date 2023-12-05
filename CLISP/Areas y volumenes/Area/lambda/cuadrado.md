# DESCRIPCION:
## Se define la función "cuadrado" que solicita al usuario la medida de un lado (variable a). Luego se utiliza una función lambda "calcular-area" para calcular el área del cuadrado, multiplicando el lado por sí mismo. El resultado se imprime.
~~~
(defun cuadrado ()
	(print "Estamos calculando el área de un cuadrado, dame la medida de un lado: ")
	(setq a (read))
	(setq calcular-area (lambda () (* a a)))
	(funcall calcular-area)
)
~~~
