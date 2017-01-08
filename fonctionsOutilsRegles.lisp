(defun conclusion (r)
  ; Renvoie les conclusions d'une règle
  (cadr r))

(defun declenchable? (r)
  ; Renvoie t si la règle est déclenchable ; nil sinon
  (let (
      (OK t)
      (premisses (car r)))
    (dolist (p premisses OK) ; pour chaque premisses de r
       ; si l'attribut a une valeur numérique mais n'est pas présent dans les faits
      (if (and (numberp (valeur p)) (not (valeur (assoc (attribut p) *faits*))))
        (setq OK nil)
         ; s'il est présent mais si sa valeur ne vérifie pas la prémisse p
        (if (not (funcall (operateur p) (valeur (assoc (attribut p) *faits*)) (valeur p)))
          (setq OK nil))))))

(defun ajouter (resultats)
  ; Ajoute un résultat à la base de faits *faits*
  (dolist (triplet resultats)
    (if (assoc (attribut triplet) *faits*) ; si l'attribut est déjà présent dans la base
      (setf (caddr (assoc (attribut triplet) *faits*)) (valeur triplet)) ; on remplace sa valeur
      (push triplet *faits*)))) ; sinon on rajoute triplet à la base de faits
