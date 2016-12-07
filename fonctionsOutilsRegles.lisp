;;Fonctions outils pour les règles
(defun conclusion (r)
  (cadr r))

(defun declenchable? (r)
  (let (
      (OK t)
      (premisses (car r))
    )
    (dolist (p premisses OK)
      (if (and (numberp (valeur p)) (not (valeur (assoc (objet p) *faits*))))
        (setq OK nil)
        (if (not (funcall (operateur p) (valeur (assoc (objet p) *faits*)) (valeur p)))
          (setq OK nil))))))

(defun ajouter (resultats)
  ; Ajoute un résultat à la base de faits *faits*
  ; fait : triplet de la forme (objet opérateur valeur)
  (dolist (triplet resultats)
    (if (assoc (objet triplet) *faits*) ; si l'objet est déjà présent dans la base
      (setf (caddr (assoc (objet triplet) *faits*)) (caddr triplet)) ; on remplace sa valeurs
      (push triplet *faits*)))) ; sinon on rajoute triplet à la base de faits
