(defparameter *regles* '(
	; Règles construites de la fonctions suivantes :
	;
	; (((Premisse1 opérateur valeur)...(PremisseN opérateur valeur))
	;  	((Résultat1 opérateur valeur)...(Résultat1M opérateur valeur)))

	;; Affichage s'il y a des propositions
	;; Au début
	(((Application EQ nil))
		((Action EQ (demander Application))))

	(((Application EQ SiteWeb))
		((Action EQ (demander SiteWeb))))
	;;; Propositions Finales
	(((Application EQ SiteWebSimple))
		((Propositions EQ (PHP MySQL))))
	(((Application EQ SiteWebResponsive))
		((Propositions EQ (PHP MySQL BootStrap JavaScript))))
	(((Application EQ SiteWebEfficace))
		((Propositions EQ (Django))))
	(((Application EQ SiteWebEfficace))
		((Propositions EQ (Ruby-on-Rails))))
	(((Application EQ SiteWebSimple))
		((Propositions EQ (PHP MySQL))))
	(((Application EQ SiteWebSimple))
		((Propositions EQ (PHP MySQL))))
	(((Application EQ Mobile) (Machine EQ Mac))
		((Propositions EQ (Swift)))) ;TODO : Choisir 1
	(((Application EQ Mobile)(Machine EQ Mac)(Cible iPhone) (Budget > 100))
		((Propositions EQ (Swift)))) ;TODO : Choisir 2
	(((Application EQ Mobile) (Cible EQ Android))
		((Propositions EQ (JAVA Android-Studio SDK-Android))))
	(((Application EQ Logiciel) (Precision EQ Solide))
		((Propositions EQ (C++ JAVA))))
	(((Application EQ Logiciel) (Precision EQ Solide) (Machine EQ Windows))
		((Propositions EQ (C#))))
	(((Application EQ SystemeExpert) (Parenthèse EQ Supportee))
		((Propositions EQ (LISP))))
	(((Application EQ SystemeExpert) (Parenthèse EQ NonSupportee))
		((Propositions EQ (Prolog))))
	(((Application EQ Applet) (Precision EQ Simple))
		((Propositions EQ (Pygame Tkinter))))
	(((Application EQ Systeme) (Machine EQ Linux) (Precision EQ Interaction))
		((Propositions EQ (C Shell Tkinter))))
	(((Application EQ Jeu-Vidéo) (Precision EQ 3D))
		((Propositions EQ (C++ Unity3D))))
	(((Application EQ DIY))
		((Propositions EQ (Arduino))))
	(((Application EQ DIY) (Precision EQ Internet))
		((Propositions EQ (Raspberry-Pi))))
	(((Application EQ SystemeEmbarque))
		((Propositions EQ (Assembleur))))
))
