(defparameter *regles* '(

  ; Site web
  (((Application EQ Site-Web-Simple))
    ((Propositions EQ (PHP MySQL))))
  (((Application EQ Site-Web-Responsive))
    ((Propositions EQ (PHP MySQL BootStrap JavaScript))))
  (((Application EQ Site-Web-Efficace))
    ((Propositions EQ (Django))))
  (((Application EQ Site-Web-Efficace))
    ((Propositions EQ (Ruby-on-Rails))))
  (((Application EQ API))
    ((Propositions EQ (Django Django-Rest-Framework))))

  ; Application Mobile
  (((Application EQ Mobile)(Machine EQ Mac)(Cible EQ iPhone) (Budget > 100))
    ((Propositions EQ (Swift))))
  (((Application EQ Mobile) (Cible EQ Android))
    ((Propositions EQ (JAVA Android-Studio SDK-Android))))
  (((Application EQ Mobile) (Cible EQ Android))
    ((Propositions EQ (JAVA Android-Studio SDK-Android))))

  ; Logiciel
  (((Application EQ Logiciel) (Precision EQ Complexe))
    ((Propositions EQ (C++ JAVA))))
  (((Application EQ Logiciel) (Precision EQ Complexe) (Machine EQ Windows))
    ((Propositions EQ (C#))))

  ; Calcul-Numerique
  (((Application EQ Calcul-Numerique) (Usage EQ Individuel) (Budget > 100))
    ((Propositions EQ (Matlab))))
  (((Application EQ Calcul-Numerique) (Budget < 100))
    ((Propositions EQ (Scilab Julia Python MathPlotLib Numpy))))
  (((Application EQ Calcul-Numerique) (Usage EQ Individuel) (Budget > 100))
    ((Propositions EQ (Matlab))))

  ; Machine-Learning
  (((Application EQ Machine-Learning) (Precision EQ Prototypage-Rapide) (Budget < 101) (ManipulationMatrice EQ Oui))
    ((Propositions EQ (Octave))))
  (((Application EQ Machine-Learning) (Precision EQ Prototypage-Rapide) (Budget < 101) (ManipulationMatrice EQ NON))
    ((Propositions EQ (Python Sci-kit MathPlotLib Numpy))))
  (((Application EQ Machine-Learning) (Precision EQ Prototypage-Rapide) (Budget > 100))
    ((Propositions EQ (Matlab))))
  (((Application EQ Machine-Learning) (Precision EQ Modele-Complexe) (Budget < 101))
    ((Propositions EQ (R))))
  (((Application EQ Machine-Learning) (Precision EQ Modele-Complexe) (Budget > 100))
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
  (((Application EQ Jeu-Video) (Precision EQ 3D))
    ((Propositions EQ (C++ Unity3D OpenGL))))
  (((Application EQ Jeu-Video) (Precision EQ RPG-2D))
    ((Propositions EQ (RPG-Maker))))

  ; DIY
  (((Application EQ DIY))
    ((Propositions EQ (Arduino))))
  (((Application EQ DIY) (Precision EQ Internet))
    ((Propositions EQ (Raspberry-Pi))))

  ;Système Embarqué
  (((Application EQ Systeme) (Machine EQ Linux) (Precision EQ Interaction))
    ((Propositions EQ (C Shell Tkinter))))
  (((Application EQ Systeme-Embarque))
    ((Propositions EQ (Assembleur Shell C))))

  ;Dataware
  (((Application EQ Dataware) (QuantiteDonnee > 100000))
    ((Paradigme EQ NoSQL)))
  (((Application EQ Dataware) (QuantiteDonnee < 100001))
    ((Paradigme EQ Relationnel)))
  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture > 1000))
    ((Propositions EQ PLSQL)))
  (((Application EQ Dataware) (Paradigme EQ Relationnel) (AccesLecture < 1001))
    ((Propositions EQ PostGreSQL)))

  ;RegExp
  (((Application EQ Expression-Reguliere))
    ((Propositions EQ (Perl JavaScript))))


  ; Rédaction
  (((Application EQ Rédaction) (Precision EQ Prototypage-Rapide) (Usage EQ Collaboratif) (LogicielLibre EQ Oui))
    ((Propositions EQ (Git MD Etherpad))))

  (((Application EQ Rédaction) (Precision EQ Prototypage-Rapide) (Usage EQ Collaboratif) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (GoogleDoc))))

  (((Application EQ Rédaction) (Precision EQ Complexe) (Usage EQ Individuel) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (GoogleDoc Word))))

  (((Application EQ Rédaction) (Precision EQ Complexe) (Usage EQ Individuel) (LogicielLibre EQ Oui))
    ((Propositions EQ (LaTeX))))

  (((Application EQ Rédaction) (Precision EQ Complexe) (Usage EQ Collaboratif))
    ((Propositions EQ (Git LaTeX ShareLatex Overleaf))))

  (((Application EQ Rédaction) (Precision EQ Scientifique) (Usage EQ Individuel))
    ((Propositions EQ (LaTeX))))

  (((Application EQ Rédaction) (Precision EQ Scientifique) (Usage EQ Collaboratif))
    ((Propositions EQ (Git LaTeX))))

  (((Application EQ Apprentissage))
    ((Propositions EQ (Perl Go))))
))
