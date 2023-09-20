(defun recorre (elemento lista)
  "Recorre una lista buscando un elemento utilizando EQL."
  (if (member elemento lista :test #'eql)
      lista
      nil))
