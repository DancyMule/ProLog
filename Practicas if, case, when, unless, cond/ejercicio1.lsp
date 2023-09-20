
(defun pantalones ()
	(print "¿Cuántos pantalones vas a llevar?")
	(setq a (read))
    (cond
        ((< a 5) (* a 100))
        ((> a 5) (cond (
                        (< a 12) 
                        (* (* a 100) .85))
                        (t  (* (* a 100) .70))
                  )
        )
        
        (t (print "¿Pantalones?"))
    )
)

	