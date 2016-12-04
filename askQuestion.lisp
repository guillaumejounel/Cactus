(defun listeAttFaits ()
  (loop for fait in *faits*
    collect (objet fait)
  )
)

(defun listeAttRegles ()
  (loop for regle in *regles*
    append (loop for premisse in (car regle)
      collect (objet premisse)
    )
  )
)

(defun AttValues (attribut)
  (loop for regle in *regles*
    if (assoc attribut (car regle))
    collect (valeur (assoc attribut (car regle)))
  )
)

(defun askQuestion ()
  (let ((attribut (car (set-difference (listeAttRegles) (listeAttFaits))) valeur))
    ;"attribut" est le premier élément de la différence entre :
    ; - la liste des attributs dans la base de faits
    ; - la liste des attributs dans la base de règles (prémisses)
    ;C'est-à-dire un attribut dont la valeur est inconnue.
    (if attribut
      (if (numberp (car (AttValues attribut)))
        (until
          (AND
            (not (format t "Spécifiez : ~S~&Votre choix (nombre) : " attribut))
            (numberp (setq valeur (read)))
          ) ;Redemande tant que son choix n'est pas valide
        )
        (until
          (AND
            ;liste les valeurs possibles de l'attribut et fait lire un choix à l'utilisateur
            (not (format t "Spécifiez : ~S~&~S~%Votre choix : " attribut (delete-duplicates (AttValues attribut))))
            (member (setq valeur (read)) (delete-duplicates (AttValues attribut)))
            ) ;Redemande tant que son choix n'est pas valide
        )
      )
      (error "Sorry, something went wrong")
    )
    (pushnew (list attribut 'EQ valeur) *faits*)
    ;  ajouter l'attribut / valeur à la base de regles
    ; TODO : Gérer le "EQ"
  )
)
