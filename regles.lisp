(defparameter *regles* '(

  ; Analyse du besoin

  (((UserStory EQ ResoudreProbMath) (Methode EQ Numerique))
    ((Application EQ Calcul-Numerique)))

  (((UserStory EQ ResoudreProbMath) (Methode EQ Formelle))
    ((Application EQ Calcul-Formel)))

  (((UserStory EQ Modeliser) (ModeliserDonnee EQ Non) (SystemeComplexe EQ Oui))
    ((UserStoryPrec EQ ModeliserSystemeComplexe)))

  (((UserStory EQ Modeliser) (SystemeComplexe EQ Non) (ModeliserDonnee EQ Oui))
    ((UserStoryPrec EQ ModeliserDonnee)))

    (((UserStoryPrec EQ ModeliserDonnee) (IntellienceArtificielle EQ Symbolique))
      ((Application EQ Systeme-Expert)))

    (((UserStoryPrec EQ ModeliserDonnee) (IntellienceArtificielle EQ Numerique))
      ((Application EQ Machine Learning)))

    (((UserStoryPrec EQ ModeliserSystemeComplexe) (PrecisionSystemeComplexe EQ Equations))
      ((Application EQ Calcul-Numerique)))

    (((UserStoryPrec EQ ModeliserSystemeComplexe) (PrecisionSystemeComplexe EQ InteractionSys))
      ((Application EQ SMA)))

  (((UserStory EQ Decouvrir) (AimeJeu EQ Oui))
    ((UserStoryPrec EQ Jeux)))

    (((UserStoryPrec EQ Jeux) (Prefere EQ Smartphone))
      ((Application EQ Mobile)))

    (((UserStoryPrec EQ Jeux) (Prefere EQ PCetConsoles))
      ((Application EQ Jeu-video)))

  (((UserStory EQ Decouvrir) (AimeJeu EQ Non) (Internet EQ Non) (Parenthese EQ Non) (Programmation EQ Oui))
    ((Application EQ Apprentissage)))

  (((UserStory EQ Decouvrir) (AimeJeu EQ Non) (Internet EQ Oui) (Programmation EQ Non) (Parenthese EQ Non))
    ((Application EQ Site-Web)))

  (((UserStory EQ Decouvrir) (AimeJeu EQ Non) (Internet EQ Non) (Programmation EQ Non) (Parenthese EQ Oui))
    ((Propositions EQ (LISP))))

  (((UserStory EQ MiseEnFormeInfos) (BeaucoupInfo EQ NON))
    ((Application EQ Redaction)))

  (((UserStory EQ MiseEnFormeInfos) (BeaucoupInfo EQ OUI))
    ((UserStoryPrec EQ TraitementDInfos)))

  (((UserStoryPrec EQ TraitementDInfos) (PrecisionInfo EQ FiltrerTexte))
    ((Application EQ Expression-Reguliere)))

  (((UserStoryPrec EQ TraitementDInfos) (PrecisionInfo EQ Organiser))
    ((Application EQ Dataware)))

  (((UserStoryPrec EQ TraitementDInfos) (PrecisionInfo EQ FaireDesModeles))
    ((Application EQ Machine-Learning)))

  (((UserStory EQ DEJAIDEEDEV) (ChoixProjet EQ Site-web))
    ((Application EQ Site-web)))

  (((UserStory EQ DEJAIDEEDEV) (ChoixProjet EQ Logiciel))
    ((Application EQ Logiciel)))

  (((UserStory EQ DEJAIDEEDEV) (ChoixProjet EQ Applet))
    ((Application EQ Applet)))

  (((UserStory EQ DEJAIDEEDEV) (ChoixProjet EQ Jeu-video))
    ((Application EQ Jeu-video)))

  ; Site web
  (((Application EQ Site-Web) (PrecisionSite EQ Simple) (Interaction-Dynamique EQ OUI))
    ((Propositions EQ (HTML PHP MySQL Symfony JavaScript AJAX))))

  (((Application EQ Site-Web) (PrecisionSite EQ Simple) (Interaction-Dynamique EQ NON))
    ((Propositions EQ (HTML PHP MySQL))))

  (((Application EQ Site-Web) (PrecisionSite EQ Responsive))
    ((Propositions EQ (HTML PHP MySQL BootStrap JavaScript AJAX))))

  (((Application EQ Site-Web) (PrecisionSite EQ Bonne))
    ((Propositions EQ (HTML PHP MySQL Symfony))))

  (((Application EQ Site-Web) (PrecisionSite EQ Efficace) (RoRvsDjango EQ Configurable))
    ((Propositions EQ (HTML JavaScript Django AJAX))))

  (((Application EQ Site-Web) (PrecisionSite EQ Efficace) (RoRvsDjango EQ Populaire))
    ((Propositions EQ (HTML JavaScript Ruby Ruby-on-Rails AJAX))))

  ; Application Mobile
  (((Application EQ Mobile)(Machine EQ Mac)(Cible EQ iPhone) (Budget > 100))
    ((Propositions EQ (Swift))))

  (((Application EQ Mobile) (Cible EQ Android))
    ((Propositions EQ (JAVA Android-Studio SDK-Android))))

  ; Logiciel
  (((Application EQ Logiciel) (PrecisionLogiciel EQ Complexe))
    ((Propositions EQ (C++ JAVA Git))))

  (((Application EQ Logiciel) (PrecisionLogiciel EQ Complexe) (Machine EQ Windows))
    ((Propositions EQ (C# Git))))

  ; Calcul-Numerique
  (((Application EQ Calcul-Numerique) (Usage EQ Individuel) (Budget > 100))
    ((Propositions EQ (Matlab))))

  (((Application EQ Calcul-Numerique) (Budget < 120) (ManipulationMatrice EQ OUI))
    ((Propositions EQ (Octave Scilab Julia Fortran))))

  (((Application EQ Calcul-Numerique) (Budget < 120) (ManipulationMatrice EQ NON))
    ((Propositions EQ (Python MathPlotLib Numpy))))

  ; Calcul-Numerique
  (((Application EQ Calcul-Formel) (Budget < 100))
    ((Propositions EQ (Sage))))

  (((Application EQ Calcul-Formel) (Budget > 90))
    ((Propositions EQ (Maple))))

  ; Machine-Learning
  (((Application EQ Machine-Learning) (PrecisionML EQ Prototypage-Rapide) (Budget < 101) (ManipulationMatrice EQ OUI))
    ((Propositions EQ (Octave))))

  (((Application EQ Machine-Learning) (PrecisionML EQ Prototypage-Rapide) (Budget < 101) (ManipulationMatrice EQ NON))
    ((Propositions EQ (Python Sci-kit MathPlotLib Numpy))))

  (((Application EQ Machine-Learning) (PrecisionML EQ Prototypage-Rapide) (Budget > 100))
    ((Propositions EQ (Matlab))))

  (((Application EQ Machine-Learning) (PrecisionML EQ Modele-Complexe) (Budget < 101))
    ((Propositions EQ (R))))

  (((Application EQ Machine-Learning) (PrecisionML EQ Modele-Complexe) (Budget > 100))
    ((Propositions EQ (Matlab))))

  ; Système-expert
  (((Application EQ Systeme-Expert) (Parenthese EQ Oui))
    ((Propositions EQ (LISP))))

  (((Application EQ Systeme-Expert) (Parenthese EQ Non))
    ((Propositions EQ (Prolog))))

  ; Applet
  (((Application EQ Mobile) (Machine EQ Mac) (Cible EQ Mac))
    ((Propositions EQ (Swift))))

  (((Application EQ Applet) (Usage EQ Individuel))
    ((Propositions EQ (Pygame Tkinter))))

  ; Jeu-Video
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 3D))
    ((Propositions EQ (C++ Unity3D OpenGL))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ RPG-2D))
    ((Propositions EQ (RPG-Maker))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Mac) (Budget < 35))
    ((Propositions EQ (SpriteKit Swift Pygame))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Mac) (Budget > 34))
    ((Propositions EQ (C++ Unity3D OpenGL))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Windows) (Budget < 35))
    ((Propositions EQ (Pygame))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Windows) (Budget > 34))
    ((Propositions EQ (Pygame))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Linux) (Budget < 35))
    ((Propositions EQ (C++ Unity3D OpenGL))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Linux) (Budget > 34))
    ((Propositions EQ (C++ Unity3D OpenGL))))

  ; DIY
  (((Application EQ DIY) (AccesAInternet EQ OUI) (Capteur EQ OUI))
    ((ObjetConnecte EQ OUI)))

  (((Application EQ DIY) (ObjetConnecte EQ OUI) (CommunicationAvecAutres EQ OUI))
    ((Propositions EQ (Raspberry-Pi))))

  (((Application EQ DIY) (ObjetConnecte EQ OUI) (CommunicationAvecAutres EQ NON))
    ((Propositions EQ (Arduino EthernetShield))))

  (((Application EQ DIY) (AccesAInternet EQ NON) (CommunicationAvecAutres EQ OUI))
    ((Propositions EQ (Arduino Bluetooth RadioTransmitter))))

  (((Application EQ DIY) (AccesAInternet EQ NON) (CommunicationAvecAutres EQ NON))
    ((ObjetConnecte EQ NON)))

  (((Application EQ DIY) (ObjetConnecte EQ NON))
    ((Propositions EQ (Arduino))))

  ;Programmation systeme
  (((Application EQ Systeme) (Machine EQ Linux) (PrecisionSysteme EQ Interaction))
    ((Propositions EQ (C Shell Tkinter))))

  ;Système Embarque
  (((Application EQ Systeme-Embarque))
    ((Propositions EQ (Assembleur Shell C))))

  ;Système Multi-agents
  (((Application EQ SMA) (PrecisionSMA EQ SimulationDeFoule))
    ((Propositions EQ (MASSIVE))))

  (((Application EQ SMA) (PrecisionSMA EQ Trading))
    ((Propositions EQ (MetaTrader4))))

  (((Application EQ SMA) (PrecisionSMA EQ Autre))
    ((Propositions EQ (JADE Java))))

  ;Dataware
  (((Application EQ Dataware) (QuantiteDonnee > 100000))
    ((Paradigme EQ NoSQL)))

  (((Application EQ Dataware) (QuantiteDonnee < 100001))
    ((Paradigme EQ Relationnel)))

  (((Application EQ Dataware) (AccesLecture < 1001))
    ((Paradigme EQ Relationnel)))

  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture > 1000) (Usage EQ GrandPublic) (ControleAcces EQ OUI))
    ((Propositions EQ (HTML Django Rest PLSQL))))

  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture < 1001) (Usage EQ Prive) (ControleAcces EQ OUI))
    ((Propositions EQ (HTML Django PostGreSQL))))

  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture > 1000) (Usage EQ GrandPublic) (ControleAcces EQ NON))
    ((Propositions EQ (HTML Django Rest PLSQL OAuth2))))

  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture < 1001) (Usage EQ Prive) (ControleAcces EQ NON))
    ((Propositions EQ (HTML Django PostGreSQL OAuth2))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Document) (Usage EQ GrandPublic) (ControleAcces EQ OUI))
    ((Propositions (HTML MongoDB Json Django Rest OAuth2))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Graphe) (Usage EQ GrandPublic) (ControleAcces EQ OUI))
    ((Propositions (HTML Neo4J Django Rest OAuth2))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Document) (Usage EQ Prive) (ControleAcces EQ OUI))
    ((Propositions (HTML MongoDB Json Rest OAuth2))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Graphe) (Usage EQ Prive) (ControleAcces EQ OUI))
    ((Propositions (HTML Neo4J Rest OAuth2))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Document) (Usage EQ GrandPublic) (ControleAcces EQ NON))
    ((Propositions (HTML MongoDB Json Django Rest))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Graphe) (Usage EQ GrandPublic) (ControleAcces EQ NON))
    ((Propositions (HTML Neo4J Django Rest))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Document) (Usage EQ Prive) (ControleAcces EQ NON))
    ((Propositions (HTML MongoDB Json Rest))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Graphe) (Usage EQ Prive) (ControleAcces EQ NON))
    ((Propositions (HTML Neo4J Rest))))


  ;RegExp
  (((Application EQ Expression-Reguliere))
    ((Propositions EQ (Perl JavaScript))))


  ; Redaction
  (((Application EQ Redaction) (PrecisionRedaction EQ Prototypage-Rapide) (Usage EQ Collaboratif) (LogicielLibre EQ OUI))
    ((Propositions EQ (Git MD Etherpad))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Prototypage-Rapide) (Usage EQ Collaboratif) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (GoogleDoc))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Complexe) (Usage EQ Individuel) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (GoogleDoc Word))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Complexe) (Usage EQ Individuel) (LogicielLibre EQ OUI))
    ((Propositions EQ (LaTeX))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Complexe) (Usage EQ Collaboratif))
    ((Propositions EQ (Git LaTeX ShareLatex Overleaf))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Scientifique) (Usage EQ Individuel))
    ((Propositions EQ (LaTeX))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Scientifique) (Usage EQ Collaboratif))
    ((Propositions EQ (Git LaTeX))))

  ; Apprentissage
  (((Application EQ Apprentissage) (Recent EQ OUI))
    ((Propositions EQ (Python Go))))

  (((Application EQ Apprentissage) (Recent EQ PasForcement))
    ((Propositions EQ (Perl Pascal))))
))
