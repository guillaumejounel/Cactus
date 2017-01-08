(defparameter *questions*
'(
  (UserStory . "Que souhaitez-vous faire ? ")
  (Application . "Quel type d'applications voulez-vous developper ou solliciter ?")
  (PrecisionSite . "Précisez l'usage que vous voulez faire de votre site :")
  (PrecisionSMA . "Précisez l'usage que vous voulez faire de votre système multi-agent :")
  (PrecisionSysteme . "Précisez ce que vous souhaitez faire en programmation système :")
  (PrecisionMachineLearning . "Précisez ce que vous voulez faire en machine learning :")
  (PrecisionLogiciel . "Précisez l'usage que vous voulez faire de votre application :")
  (PrecisionJeu . "Précisez l'usage que vous voulez faire de votre application :")
  (PrecisionRedaction . "Dans quel cadre s'inscrit cette rédaction ?")
  (Machine . "Sur quel système d'explotation travaillez-vous ?")
  (Cible . "Pour quel système developpez-vous ?")
  (CibleJV . "Pour quel système developpez-vous ?")
  (Budget . "Quel budget avez-vous ? Entrez un chiffre.")
  (Usage . "De quel usage avez-vous besoin ?")
  (UsageApp . "De quel usage avez-vous besoin pour votre applet ?")
  (UsageRedac . "De quel usage avez-vous besoin pour la rédaction ?")
  (ParentheseDec . "Voulez-vous découvrir un langage symbolique fondateur ?")
  (Parenthese . "Voulez-vous découvrir un langage symbolique fondateur ?")
  (QuantiteDonnee . "Votre projet nécessite-t-il de traiter beaucoup de données ?")
  (Visiteurs . "Précisez le nombre de visiteurs attendus :")
  (LogicielLibre . "Êtes-vous un fervant défenseur du logicel libre ?")
  (Orientation . "Préfèreriez-vous que votre base de données soit orientée selon :")
  (AccesLecture . "Combien d'accès en lecture se feront sur vos données ? Donnez le nombre d'accès aux données par heure.")
  (Paradigme . "De quel paradigme de stockage de données s'agit-il ?")
  (AccesAInternet . "Votre système aura-t-il besoin d'avoir accès à internet ?")
  (ManipulationMatrice . "Aurez-vous besoin de manipuler des matrices ?")
  (RoRvsDjango . "Préferez-vous une solution populaire ou configurable ?")
  (Interaction-Dynamique ."Le design du site devra-t-il être dynamique ?")
  (Internet . "Souhaitez-vous en apprendre plus sur Internet et sur comment faire un site-web ?")
  (AimeJeu . "Souhaitez-vous développer un jeu ?")
  (Recent . "Avez-vous une préférences pour des langages récents ?")
  (Methode . "Comment souhaitez-vous résoudre ce problème ?")
  (Programmation . "Voulez-vous apprendre à programmer ?")
  (SystemeComplexe . "Voulez-vous modéliser un système complexe ?")
  (PrecisionSystemeComplexe . "De quel type de systeme complexes s'agit-il ?")
  (BeaucoupInfo . "Disposez-vous de beaucoup d'informations ? ")
  (Prefere . "Que préférez-vous entre les jeux PC et les jeux smartphone ?")
  (ControleAcces . "Avez-vous besoin de contrôler l'accès de différents utilisateurs sur cette plateforme ?")
  (ChoixProjet . "Quel est votre projet ?")
  (IntellienceArtificielle . "Quel paradigme d'IA souhaitez-vous utilisez ?")))

;(setq attBR nil)
; (dolist (r *regles*) (dolist (y (car (last (assoc 'propositions (conclusion r))))) (pushnew y attBR)))
; (setq attBF (loop for a in *technologies* collect (car a)))
; (delete-duplicates (set-difference attBF attBr))
