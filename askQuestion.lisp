(defun listeAttFaits ()
  (loop for fait in *faits*
    collect (attribut fait)))

(defun listeAttRegles ()
  (loop for regle in *regles*
    append (loop for premisse in (car regle)
      collect (attribut premisse))))

(defun AttValues (attribut)
  (loop for regle in *regles*
    if (assoc attribut (car regle))
    collect (valeur (assoc attribut (car regle)))))

(defun questionAssociee (attribut)
  (if (cdr (assoc attribut *questions*))
    (cdr (assoc attribut *questions*))
    attribut))

(defun askQuestion ()
  (let ((attribut (car (set-difference (listeAttRegles) (listeAttFaits))) valeur))
    ; "attribut" est le premier élément de la différence entre :
    ; - la liste des attributs dans la base de faits
    ; - la liste des attributs dans la base de règles (prémisses)
    ; C'est-à-dire un attribut dont la valeur est inconnue.
    (if attribut
      (if (numberp (car (AttValues attribut))) ; la valeur de celui-ci est-elle un nombre ?
        (until
          (AND
            (not (format t "------~&~S~%------~%Votre choix (nombre) : " (questionAssociee attribut)))
            (numberp (setq valeur (read))))) ; Redemande tant que son choix n'est pas valide
        (until
          (AND
            ; liste les valeurs possibles de l'attribut et fait lire un choix à l'utilisateur
            (not (format t "------~&~S~%------~%~%~S~%~%Votre choix : " (questionAssociee attribut) (delete-duplicates (AttValues attribut))))
            (member (setq valeur (read)) (delete-duplicates (AttValues attribut))))))
            ; Redemande tant que son choix n'est pas valide
      (error "Nous n'avons rien pu trouver."))
    (sleep 1)
    (pushnew (list attribut 'EQ valeur) *faits*)))
