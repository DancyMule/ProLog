;Relaciones
(defun esPadre (padre hijo)
  (list 'padre padre hijo))

(defun esMadre (madre hijo)
  (list 'madre madre hijo))

(defun esHijo (hijo padre madre)
  (list 'hijo hijo padre madre))

(defun esHija (hija padre madre)
  (list 'hija hija padre madre))

(defun esHermano (hermano1 hermano2)
  (list 'hermano hermano1 hermano2))

(defun esHermana (hermano1 hermano2)
  (list 'hermana hermano1 hermano2))

(defun esAbuelo (abuelo nieto)
  (list 'abuelo abuelo nieto))

(defun esAbuela (abuela nieto)
  (list 'abuela abuela nieto))

(defun esTio (tio sobrino)
  (list 'tio tio sobrino))

(defun esTia (tia sobrino)
  (list 'tia tia sobrino))

(defun esSobrino (sobrino tio)
  (list 'sobrino sobrino tio))

(defun esSobrina (sobrina tio)
  (list 'sobrina sobrina tio))

(defun esNieto (nieto abuelo)
  (list 'nieto nieto abuelo))

(defun esNieta (nieta abuelo)
  (list 'nieta nieta abuelo))
  

;Lista de Relaciones
(setq relaciones
    (list 
            (esAbuelo 'JorgeH 'Enya)
            (esAbuelo 'JorgeH 'Jorge)
            (esAbuelo 'JorgeH 'Mateo)
            (esAbuelo 'Alberto 'Enya)
            (esAbuelo 'Alberto 'Jorge)
            (esAbuelo 'Alberto 'Mateo)
            (esAbuela 'Irma 'Enya)
            (esAbuela 'Irma 'Jorge)
            (esAbuela 'Irma 'Mateo)
            (esAbuela 'Mercedes 'Enya)
            (esAbuela 'Mercedes 'Jorge)
            (esAbuela 'Mercedes 'Mateo)
            (esPadre 'JorgeH 'JorgeJ)
            (esPadre 'JorgeH 'Cesar)
            (esPadre 'JorgeH 'Alex)
            (esPadre 'JorgeH 'Javier)
            (esPadre 'Alberto 'Mily)
            (esPadre 'JorgeJ 'Enya)
            (esPadre 'JorgeJ 'Jorge)
            (esPadre 'JorgeJ 'Mateo)
            (esMadre 'Irma 'JorgeJ)
            (esMadre 'Irma 'Cesar)
            (esMadre 'Irma 'Alex)
            (esMadre 'Irma 'Javier)
            (esMadre 'Mercedes 'Mily)
            (esMadre 'Mily 'Enya)
            (esMadre 'Mily 'Jorge)
            (esMadre 'Mily 'Mateo)
            (esHija 'Mily 'Alberto 'Mercedes)
            (esHija 'Gabriela 'Alberto 'Mercedes)
            (esHija 'Enya 'JorgeJ 'Mily)
            (esHijo 'JorgeJ 'JorgeH 'Irma)
            (esHijo 'Cesar 'JorgeH 'Irma)
            (esHijo 'Alex 'JorgeH 'Irma)
            (esHijo 'Beto 'Alberto 'Mercedes)
            (esHijo 'Javier 'JorgeH 'Irma)
            (esHijo 'Jorge 'JorgeJ 'Mily)
            (esHijo 'Mateo 'JorgeJ 'Mily)
            (esHermana 'Enya 'Jorge)
            (esHermana 'Enya 'Mateo)
            (esHermana 'Mily 'Gabriela)
            (esHermana 'Mily 'Beto)
            (esHermana 'Gabriela 'Mily)
            (esHermana 'Gabriela 'Beto)
            (esHermano 'Beto 'Mily)
            (esHermano 'Beto 'Gabriela)
            (esHermano 'JorgeJ 'Cesar)
            (esHermano 'JorgeJ 'Alex)
            (esHermano 'JorgeJ 'Javier)
            (esHermano 'Cesar 'JorgeJ)
            (esHermano 'Cesar 'Alex)
            (esHermano 'Cesar 'Javier)
            (esHermano 'Alex 'Cesar)
            (esHermano 'Alex 'JorgeJ)
            (esHermano 'Alex 'Javier)
            (esHermano 'Javier 'JorgeJ)
            (esHermano 'Javier 'Alex)
            (esHermano 'Javier 'Cesar)
            (esHermano 'Jorge 'Mateo)
            (esHermano 'Jorge 'Enya)
            (esHermano 'Mateo 'Enya)
            (esHermano 'Mateo 'Jorge)
            (esNieta 'Enya 'Irma)
            (esNieta 'Enya 'JorgeH)
            (esNieta 'Enya 'Alberto)
            (esNieta 'Enya 'Mercedes)
            (esNieto 'Jorge 'Irma)
            (esNieto 'Jorge 'JorgeH)
            (esNieto 'Jorge 'Alberto)
            (esNieto 'Jorge 'Mercedes)
            (esNieto 'Mateo 'Irma)
            (esNieto 'Mateo 'JorgeH)
            (esNieto 'Mateo 'Alberto)
            (esNieto 'Mateo 'Mercedes)
            (esTio 'Cesar 'Enya)
            (esTio 'Cesar 'Jorge)
            (esTio 'Cesar 'Mateo)
            (esTio 'Alex 'Enya)
            (esTio 'Alex 'Jorge)
            (esTio 'Alex 'Mateo)
            (esTio 'Javier 'Enya)
            (esTio 'Javier 'Jorge)
            (esTio 'Javier 'Mateo)
            (esTio 'Beto 'Enya)
            (esTio 'Beto 'Jorge)
            (esTio 'Beto 'Mateo)
            (esTia 'Gabriela 'Enya)
            (esTia 'Gabriela 'Jorge)
            (esTia 'Gabriela 'Mateo)

    )    
)

;Reglas de busqueda (predicado)

;Predicado buscar padre
(defun buscarPadre (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'padre)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)

;Predicado buscar madre
(defun buscarMadre (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'madre)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar hijo
(defun buscarHijo (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'hijo)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar hija
(defun buscarHija (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'hija)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar hermano
(defun buscarHermano (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'hermano)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar hermana
(defun buscarHermana (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'hermana)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar tio
(defun buscarTio (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'Tio)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar tia
(defun buscarTia (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'Tia)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar abuelo
(defun buscarAbuelo(nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'abuelo)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar abuela
(defun buscarAbuela (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'abuela)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar nieto
(defun buscarNieto(nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'nieto)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
;Predicado buscar nieta
(defun buscarNieta (nombre)
  (remove-if-not #'identity
                 (mapcar (lambda (relacion)
                           (if (and (eq (car relacion) 'nieta)
                                    (eq (caddr relacion) nombre)
                                )
                                (cadr relacion) nil
                            )
                          ) relaciones
                    )
  )
)
