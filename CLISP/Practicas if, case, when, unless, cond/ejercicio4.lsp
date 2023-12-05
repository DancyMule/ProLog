(defvar *modulo* (lambda (num div) (= (mod num div) 0)))
(defun bisiesto ()
    (format t "Ingrese un año: ")
    (setq año (read))
    (if 
        (or
            (and (funcall *modulo* año 4) (not (funcall *modulo* año 100)))
            (funcall *modulo* año 400)
        )
        (format t "El año ~a es bisiesto.~%")
        (format t "El año ~a no es bisiesto.~%")
    )
)