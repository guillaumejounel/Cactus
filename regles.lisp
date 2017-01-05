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
  (((Application EQ Logiciel) (Precision EQ Solide))
    ((Propositions EQ (C++ JAVA))))
  (((Application EQ Logiciel) (Precision EQ Solide) (Machine EQ Windows))
    ((Propositions EQ (C#))))

  ; Calcul-Numerique
  (((Application EQ Calcul-Numerique) (Usage EQ Individuel) (Budget > 100))
    ((Propositions EQ (Matlab))))
  (((Application EQ Calcul-Numerique) (Budget < 100))
    ((Propositions EQ (Scilab Julia ))))

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
  (((Application EQ Jeu-Video) (Precision EQ 2D) (Cible EQ Mac) (Budget < 35))
    ((Propositions EQ (SpriteKit Swift Pygame))))
  (((Application EQ Jeu-Video) (Precision EQ 2D) (Cible EQ Mac) (Budget > 34))
    ((Propositions EQ (C++ Unity3D OpenGL))))
  (((Application EQ Jeu-Video) (Precision EQ 2D) (Cible EQ Windows) (Budget < 35))
    ((Propositions EQ (Pygame))))
  (((Application EQ Jeu-Video) (Precision EQ 2D) (Cible EQ Windows) (Budget > 34))
    ((Propositions EQ (Pygame))))
  (((Application EQ Jeu-Video) (Precision EQ 2D) (Cible EQ Linux) (Budget < 35))
    ((Propositions EQ (C++ Unity3D OpenGL))))
  (((Application EQ Jeu-Video) (Precision EQ 2D) (Cible EQ Linux) (Budget > 34))
    ((Propositions EQ (C++ Unity3D OpenGL))))

  ;DIY
  (((Application EQ DIY))
    ((Propositions EQ (Arduino))))
  (((Application EQ DIY) (Precision EQ Internet))
    ((Propositions EQ (Raspberry-Pi))))

  ;Système Embarqué
  (((Application EQ Systeme) (Machine EQ Linux) (Precision EQ Interaction))
    ((Propositions EQ (C Shell Tkinter))))
  (((Application EQ Systeme-Embarque))
    ((Propositions EQ (Assembleur Shell C))))

  ;Système Multi-agents
  (((Application EQ SMA) (Precision SimulationDeFoule))
    ((Propositions EQ (MASSIVE))))
  (((Application EQ SMA) (Precision Trading))
    ((Propositions EQ (MetaTrader4))))
  (((Application EQ SMA) (Precision Autre))
    ((Propositions EQ (JADE Java))))

  ;Dataware
  (((Application EQ Dataware) (QuantiteDonnee > 100000))
    ((Paradigme EQ NoSQL)))
  (((Application EQ Dataware) (QuantiteDonnee < 100001))
    ((Paradigme EQ Relationnel)))

  ;Autre
  (((Application EQ Expression-Reguliere))
    ((Propositions EQ (Perl JavaScript))))

  (((Application EQ Apprentissage))
    ((Propositions EQ (Perl Go))))
))
