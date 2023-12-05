# Descripción:
## La función "pantalones" solicita al usuario la cantidad de pantalones que planea llevar. Según la cantidad ingresada, se calcula el costo total aplicando descuentos. Si la cantidad es menor a 5, el costo es simplemente la cantidad multiplicada por 100. Si la cantidad es mayor a 5, se aplican descuentos del 15% si la cantidad está entre 5 y 12, o del 30% si la cantidad es mayor a 12.
~~~
(defun pantalones ()
	(print "¿Cuántos pantalones vas a llevar?")
	(setq a (read))
    (if (< a 5)
        (* a 100)            
        (if (> a 5)
            (if (> a 12)
                (* (* a 100) 0.70) ; Menor o igual a 12, se aplica un descuento del 30%
                (* (* a 100) 0.85) ; Mayor que 5 pero no mayor que 12, se aplica un descuento del 15%
            )
        nil                
        )
    )
)
~~~