
(defun pantalones ()
	(print "¿Cuántos pantalones vas a llevar?")
	(setq a (read))
    (if (< a 5)
    (* a 100)
        (if (> a 5)
            (if (> a 12)
                (* (* a 100) 0.70) ; Menor o igual a 12
                (* (* a 100) 0.85) ; Mayor que 5 pero no mayor que 12
            )
        nil                 ; Menor o igual a 5
        )
    )


)

	

    
