(defparameter *regles* '(

  ; Site web
  (((Application EQ Site-Web) (PrecisionSite EQ Simple) (Interaction-Dynamique EQ OUI))
    ((Propositions EQ (HTML PHP MySQL JavaScript))))
  (((Application EQ Site-Web) (PrecisionSite EQ Simple) (Interaction-Dynamique EQ NON))
    ((Propositions EQ (HTML PHP MySQL))))
  (((Application EQ Site-Web) (PrecisionSite EQ Responsive))
    ((Propositions EQ (HTML PHP MySQL BootStrap JavaScript))))
  (((Application EQ Site-Web) (PrecisionSite EQ Efficace) (RoRvsDjango EQ Configurable))
    ((Propositions EQ (HTML Django))))
  (((Application EQ Site-Web) (PrecisionSite EQ Efficace) (RoRvsDjango EQ Populaire))
    ((Propositions EQ (HTML Ruby-on-Rails))))

  ; Application Mobile
  (((Application EQ Mobile)(Machine EQ Mac)(Cible EQ iPhone) (Budget > 100))
    ((Propositions EQ (Swift))))
  (((Application EQ Mobile) (Cible EQ Android))
    ((Propositions EQ (JAVA Android-Studio SDK-Android))))
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
  (((Application EQ Calcul-Numerique) (Budget < 100) (ManipulationMatrice EQ OUI))
    ((Propositions EQ (Octave Scilab Julia Fortran))))
  (((Application EQ Calcul-Numerique) (Budget < 100) (ManipulationMatrice EQ NON))
    ((Propositions EQ (Python MathPlotLib Numpy))))

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
  (((Application EQ Systeme-Expert) (Parenthese EQ Supportee))
    ((Propositions EQ (LISP))))
  (((Application EQ Systeme-Expert) (Parenthese EQ Non-Supportee))
    ((Propositions EQ (Prolog))))

  ; Applet
  (((Application EQ Mobile) (Machine EQ Mac) (Cible EQ Mac))
    ((Propositions EQ (Swift))))
  (((Application EQ Applet) (Usage EQ Personnel))
    ((Propositions EQ (Pygame Tkinter))))

  ; Jeu-Video
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 3D))
    ((Propositions EQ (C++ Unity3D OpenGL))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ RPG-2D))
    ((Propositions EQ (RPG-Maker))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (Cible EQ Mac) (Budget < 35))
    ((Propositions EQ (SpriteKit Swift Pygame))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (Cible EQ Mac) (Budget > 34))
    ((Propositions EQ (C++ Unity3D OpenGL))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (Cible EQ Windows) (Budget < 35))
    ((Propositions EQ (Pygame))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (Cible EQ Windows) (Budget > 34))
    ((Propositions EQ (Pygame))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (Cible EQ Linux) (Budget < 35))
    ((Propositions EQ (C++ Unity3D OpenGL))))
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (Cible EQ Linux) (Budget > 34))
    ((Propositions EQ (C++ Unity3D OpenGL))))

  ; DIY
  (((Application EQ DIY) (AccesAInternet EQ OUI))
    ((Propositions EQ (Arduino))))
  (((Application EQ DIY) (AccesAInternet EQ OUI))
    ((Propositions EQ (Raspberry-Pi))))

  ;Système Embarqué
  (((Application EQ Systeme) (Machine EQ Linux) (PrecisionSysteme EQ Interaction))
    ((Propositions EQ (C Shell Tkinter))))
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
    ((Paradigme EQ (NoSQL))))
  (((Application EQ Dataware) (QuantiteDonnee < 100001))
    ((Paradigme EQ (Relationnel))))

  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture > 1000))
    ((Propositions EQ (PLSQL))))
  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture < 1001))
    ((Propositions EQ (PostGreSQL))))

  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Document))
    ((Propositions EQ (MongoDB))))
  (((Application EQ Dataware) (Paradigme EQ NoSQL) (Orientation EQ Graphe))
    ((Propositions EQ (Neo4J))))

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
  (((Application EQ Apprentissage))
    ((Propositions EQ (Perl Go Pascal))))
))
