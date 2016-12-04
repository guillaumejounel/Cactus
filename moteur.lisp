;;Proposition de moteur chaînage avant en largeur

(defun go (moteur)
 ; permet de lancer le programme avec le moteur voulu
)

(defun ChainageAvantLarg (but)
	(let (EC regleCourante)
		(loop ; on boucle
			(if (assoc 'Propositions *faits*)) ; si le but est présent dans la base de faits,
				(afficherPropositions (cdr (assoc 'Propositions *faits*)))
				(dolist (r *regles*) ; sinon on parcourt les règles dans la base de règles
					(when (declenchable? r); si une règle est déclenchable
						(setq EC (append EC (list r))) ; on l'ajoute à l'ensemble contraint EN FIN
						(setq *regles* (remove r *regles*))))) ; on l'enlève de la base de règles
			(if EC ; si on peut encore déclencher des règles
				(progn
					(setq regleCourante (pop EC)) ; on choisit la dernière obtenue
					(ajouter (conclusion regleCourante))) ; on ajoute son résultat à la base de faits
				(poserQuestion))))
