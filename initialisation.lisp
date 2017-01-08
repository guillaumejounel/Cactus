(defun init (choix introduction moteur)
  (let (path (startAtt 'UserStory) valeur)
  (if (= choix 1)
    (setq path "~/Cloud/WORK/UTC/GI01/IA01/Cactus/")
    (setq path "~/Documents/UTC/GI01/IA01/Cactus/"))
  (load (concatenate 'string path "technologies.lisp"))
  (load (concatenate 'string path "regles.lisp"))
  (load (concatenate 'string path "questions.lisp"))
  (load (concatenate 'string path "fonctionsOutilsFaits.lisp"))
  (load (concatenate 'string path "fonctionsOutilsRegles.lisp"))
  (load (concatenate 'string path "chainageAvantLarg.lisp"))
  (load (concatenate 'string path "chainageAvantProf.lisp"))
  (load (concatenate 'string path "askQuestion.lisp"))
  (load (concatenate 'string path "afficherPropositions.lisp"))
  (load (concatenate 'string path "intro.lisp"))
  (defparameter *faits* nil)
  (if introduction
    (intro))
  (until
    (AND
      ; liste les valeurs possibles de l'attribut et fait lire un choix à l'utilisateur
      (not (format t "------~&~S~%------~%~%~S~%~%Votre choix : " (questionAssociee startAtt) (afficherchoix (delete-duplicates (AttValues startAtt)))))
      (member (setq valeur (read)) (delete-duplicates (AttValues startAtt)))))
  (pushnew (list startAtt 'EQ valeur) *faits*)
  (if (= moteur 1)
    (ChainageAvantLarg)
    (ChainageAvantProf))))


(setq attBR nil)
(dolist (r *regles*) (dolist (y (car (last (assoc 'propositions (conclusion r))))) (pushnew y attBR)))
(setq attBF (loop for a in *technologies* collect (car a)))

(loop for a in (set-difference attBR attBF) do (print a))
(loop for a in (set-difference attBF attBR) do (print a))
