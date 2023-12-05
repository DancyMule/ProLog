# DESCRIPCION: 
## Se define la función "circulo" que solicita al usuario un valor para el radio (variable a). Luego se utiliza una función lambda "calcular-area" para calcular el área del círculo, multiplicando el cuadrado del radio por 3.1416. El resultado se almacena en la variable "res".

~~~
(defun circulo ()
  (print "Estamos calculando el área de un círculo, dame el radio: ")
  (setq a (read))
  (setq calcular-area (lambda () (* a a 3.1416)))
  (setq res (funcall calcular-area)))
~~~	
