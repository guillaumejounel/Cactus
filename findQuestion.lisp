(defparameter *attFaits* nil)
(defparameter *attRegles* nil)

(defun listeAttFaits ()
  (loop for fait in *faits*
    do (pushnew (objet fait) *attFaits*)
  )
)

(defun listeAttRegles ()
  (loop for regle in *regles*
    do (loop for premisse in (car regle)
      do (pushnew (objet premisse) *attRegles*)
    )
  )
)

(defun findQuestion ()
  ;lister les attributs de la base de faits
  ;lister les attributs de la base de regles
  ;faire la différence entre les deux listes : ce sont les attributs qui restent inconnus
  ;si la liste résultante est vide, échec, aucun langage correspondant
  ;sinon
  ;  lister les valeurs possibles du premier attribut
  ;  faire lire un choix à l'utilisateur (while (and (print valeurs) (read member of valeurs)))
  ;  tant que son choix n'appartient pas à la liste d'attributs, redemander
  ;  ajouter l'attribut / valeur à la base de regles
)
