;;Proposition de moteur chaînage avant en largeur

(defun okgo ()
 (ChainageAvantLarg)
)

(defun ChainageAvantLarg ()
	(let (EC regleCourante)
		(loop ; on boucle
			(if (valeur (assoc 'Propositions *faits*)) ; si le but est présent dans la base de faits avec une valeur non nulle
				(progn
					(funcall 'afficherPropositions)
					(return nil))
				(dolist (r *regles*) ; sinon on parcourt les règles dans la base de règles
					(when (declenchable? r); si une règle est déclenchable
						(setq EC (append EC (list r))) ; on l'ajoute à l'ensemble contraint EN FIN
						(setq *regles* (remove r *regles* :test 'equal))))) ; on l'enlève de la base de règles
			(if EC ; si on peut encore déclencher des règles
				(progn
					(setq regleCourante (pop EC)) ; on choisit la dernière obtenue
					(ajouter (conclusion regleCourante))) ; on ajoute son résultat à la base de faits
				(askQuestion)))))
