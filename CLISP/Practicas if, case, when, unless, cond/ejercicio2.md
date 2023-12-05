# Descripción:
## La función "prestamo" solicita información al usuario, incluyendo el nombre, historial crediticio, monto solicitado, salario anual y el valor de las propiedades. Luego, evalúa si el solicitante es candidato para un préstamo, basándose en su historial crediticio y otros criterios. Si el historial es bueno, se calculan puntos según ciertos criterios, y se imprime la cantidad de puntos obtenidos.
~~~
   (defun prestamo() 
    (print "¿Cuál es tu nombre?")
    (setq nombreSolicitante (read))
    (print "¿Tu historial es bueno (1) o malo (0)?")
    (setq historial (read))
    (print "¿Cuánto monto quieres solicitar?")
    (setq montoSolicitado (read))
    (print "¿Cuál es tu salario anual?")
    (setq salarioAnual (read))
    (print "¿Cuánto valen tus propiedades?")
    (setq valorPropiedades (read))

    (cond 
        ((= historial 0) (print "No eres candidato")) 
        ((= historial 1) 
            (print "Sí eres candidato")
            ; SI ES CANDIDATO
            (let ((puntos 0)) ; Debes inicializar puntos a 0
            ; PUNTOS
            ; SALARIO
            (cond
                ((< montoSolicitado salarioAnual) 
                (setq puntos (+ puntos 5))) 

                ((< (* 2 salarioAnual) montoSolicitado) ; Corrección en la condición
                (setq puntos (+ puntos 3))) ; Debes usar 'setq' para actualizar 'puntos'
                ((< (* 0.1 salarioAnual) montoSolicitado) ; Corrección en la condición
                (setq puntos (+ puntos 1))) ; Debes usar 'setq' para actualizar 'puntos'
                (t 
                (setq puntos (+ puntos 0))) ; Debes usar 'setq' para actualizar 'puntos'
            )
            (print puntos) ; Imprime los puntos obtenidos
            )
        )
        (t (print "Uy"))
    )
   )
   ~~~