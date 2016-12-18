(defun chainageAvantProf () ; Moteur chaînage avant en profondeur
  (let (EC regleCourante)
    (loop ; on boucle
      (if (valeur (assoc 'Propositions *faits*)) ; si le but est présent dans la base de faits avec une valeur non nulle
        (progn
          (funcall 'afficherPropositions) ; on affiche les propositions
          (return nil)) ; et on arrête
        (dolist (r *regles*) ; sinon on parcourt les règles dans la base de règles
          (when (declenchable? r); si une règle est déclenchable
            (push r EC) ; on l'ajoute à l'ensemble contraint EN TÊTE
            (setq *regles* (remove r *regles* :test 'equal))))) ; on l'enlève de la base de règles
      (if EC ; si on peut encore déclencher des règles
        (progn
          (setq regleCourante (pop EC)) ; on choisit la dernière obtenue
          (ajouter (conclusion regleCourante))) ; on ajoute son résultat à la base de faits
        (askQuestion))))) ; sinon on pose une question
