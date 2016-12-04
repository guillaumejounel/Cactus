;; CHAINAGE ARRIERE
(defun ChainageArriereProf (but)
	(if (verifier but)
		"Vérifiée !"
		"Non vérifiée ..."
	)
)

(defun candidates (but)
	(let (res)
		(dolist (x *BR* (reverse res)) ; on parcourt la base de règle ; on renverra la liste res
			(if (member but (last x)) ; si le but est présent dans les résultas d'une règle
					(push (list (car x)) res) ; on ajoute l'indice de la règle à la liste res
			)
		)
	)
)

(defun premisses (regle)
	(cadr (assoc regle *BR*)) ; retourne les prémisses d'une règle
)

(defun verifier (P)
	(let ((OK nil) EC R)
		(if (member p *BF*)
			(setq OK t)
			(progn
				(setq EC (candidates P))
				(while (and (not OK) EC)
					(setq R (pop EC))
					(setq OK (verifierRegle r))
				)
			)
		)
	OK
	)
)

(defun verifierRegle (R)
	(let ((OK T) (PREM (premisses R)) P)
		(while (and OK PREM)
			(setq P (pop PREM))
			(setq OK (verifier P))
		)
		OK
	)
)
