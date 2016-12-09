(defun verifierPremisse (but)
  (let (
      (OK nil)
      EC
      R
    )
    ; si le but est dans la base de fait ou s'il y a des propositions
    (if (or (setq OK (member but *BF* :test 'equal)) (valeur (assoc 'Propositions *faits*)))
      (when (valeur (assoc 'Propositions *faits*)) ;s'il y a des propositions
        (funcall 'afficherPropositions);on les affiches
        (return nil));on termine
      (progn
        (setq EC (candidates but)) ; on récupère l'ensemble contraint
        (while (and EC (not OK)) ; tant que EC non vide et que l'on a pas trouvé de règle qui convienne
          (setq R (pop EC)) ; on enlève une règle R à EC
          (setq OK (verifierRegle R)) ; que l'on vérifie
        )
        (if (not OK) ; si on ne trouve pas de règle qui convienne
         (askQuestion) ; on pose alors une question
        )
      )
    )
    OK ; retourne la valeur de OK
  )
)

(defun verifierRegle (regle)
  (let (
      (OK t)
      (PREM (car regle)) ; on récupère les prémisses de la regle
      P
    )
    (while (and PREM OK) ; tant que PREM est non vide on vérifie que toutes les prémisses soient vérifiées
      (setq P (pop PREM)) ; on enlève une prémisse P à EC
      (setq OK (verifierPremisse P)) ; que l'on vérifie
    )
    OK ; retourne la valeur de OK
  )
)
