;;; CHAINAGE AVANT
(defun ChainageAvantProf (but)
  (let (EC (BR *BR*) (BF *BF*) regleCourante)
    (loop ; on boucle
      (if (member but BF) ; si le but est présent dans la base de faits,
        (return "Vérifiée !") ; on sort !
        (dolist (r BR) ; sinon on parcourt les règles dans la base de règles
          (when (declenchable? r BF); si une règle est déclenchable
            (push r EC) ;on l'ajoute à l'ensemble contraint AU DEBUT
            ;en réalité cela ne permet pas de faire une réelle recherche
            ;en profondeur car le push détruit l'ordre si plus d'une règle
            (setq BR (remove r BR)) ; on l'enlève de la base de règles
          )
        )
      )
      (if EC ; si on peut encore déclencher des règles
        (progn
          (setq regleCourante (pop EC)) ; on choisit la dernière obtenue
          (pushnew (conclusion regleCourante) BF) ; on ajoute son résultat à la base de faits
        )
        (return "Non vérifiée ...")
      )
    )
  )
)

(defun ChainageAvantLarg (but)
  (let (EC (BR *BR*) (BF *BF*) regleCourante)
    (loop ; on boucle
      (if (member but BF) ; si le but est présent dans la base de faits,
        (return "Vérifiée !") ; on sort !
        (dolist (r BR) ; sinon on parcourt les règles dans la base de règles
          (when (declenchable? r BF); si une règle est déclenchable
            (setq EC (append EC (list r))) ; on l'ajoute à l'ensemble contraint EN FIN
            (setq BR (remove r BR)) ; on l'enlève de la base de règles
          )
        )
      )
      (if EC ; si on peut encore déclencher des règles
        (progn
          (setq regleCourante (pop EC)) ; on choisit la dernière obtenue
          (pushnew (conclusion regleCourante) BF) ; on ajoute son résultat à la base de faits
        )
        (return "Non vérifiée ...")
      )
    )
  )
)


;;Fonctions outils
(defun conclusion (r)
  (cadr r))

(defun declenchable? (r faits)
  (let ((OK t))
    (dolist (p (car r) OK)
      (if (not (member p faits))
        (setq OK nil)
      )
    )
  )
)
