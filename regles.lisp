(defparameter *regles* '(
	(((Propositions != nil))
		((Action = (afficherPropositions Propositions))))


	;;; Propositions Finales
	(((Application = SiteWebSimple))
		((Propositions = (PHP MySQL))))
	(((Application = SiteWebResponsive))
		((Propositions = (PHP MySQL BootStrap JavaScript))))
	(((Application = SiteWebEfficace))
		((Propositions = (Django))))
	(((Application = SiteWebEfficace))
		((Propositions = (Ruby-on-Rails))))
	(((Application = SiteWebSimple))
		((Propositions = (PHP MySQL))))
	(((Application = SiteWebSimple))
		((Propositions = (PHP MySQL))))
	(((Application = Mobile)(Machine = Mac))
		((Propositions = (Swift)))) ;TODO : Choisir 1
	(((Application = Mobile)(Machine = Mac)(Cible iPhone) (Budget > 100))
		((Propositions = (Swift)))) ;TODO : Choisir 2
	(((Application = Mobile)(Cible = Android))
		((Propositions = (JAVA Android-Studio SDK-Android))))
	(((Application = Logiciel) (Precision = Solide))
		((Propositions = (C++ JAVA))))
	(((Application = Logiciel) (Precision = Solide) (Machine = Windows))
		((Propositions = (C#))))
	(((Application = SystemeExpert) (Parenthèse = Supportee))
		((Propositions = (LISP))))
	(((Application = SystemeExpert) (Parenthèse = NonSupportee))
		((Propositions = (Prolog))))
	(((Application = Applet) (Precision = Simple))
		((Propositions = (Pygame Tkinter))))
	(((Application = Systeme) (Machine = Linux) (Precision = Interaction))
		((Propositions = (C Shell Tkinter))))
	(((Application = Jeu-Vidéo) (Precision = 3D))
		((Propositions = (C++ Unity3D))))
	(((Application = DIY))
		((Propositions = (Arduino))))
	(((Application = DIY) (Precision = Internet))
		((Propositions = (Raspberry-Pi))))
	(((Application = SystemeEmbarque))
		((Propositions = (Assembleur))))
))