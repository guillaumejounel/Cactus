(defun cactus (&optional introduction moteur)
  (let (path (startAtt 'UserStory) valeur)
    (defparameter *faits* nil)
    (if (not introduction)
      (intro))
    (until
      (AND
        ; liste les valeurs possibles de l'attribut et fait lire un choix à l'utilisateur
        (not (format t "------~&~S~%------~%~%~S~%~%Votre choix : " (questionAssociee startAtt) (afficherchoix (delete-duplicates (AttValues startAtt)))))
        (member (setq valeur (read)) (delete-duplicates (AttValues startAtt)))))
    (pushnew (list startAtt 'EQ valeur) *faits*)
    (if (not moteur)
      (ChainageAvantLarg)
      (ChainageAvantProf))))
