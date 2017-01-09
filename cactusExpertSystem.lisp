(defparameter *faits* nil)
(defparameter *technologies*
'(
  ; Programmation système
  (C . "Un des langages les plus populaires et très bien structuré ; utilisé pour accéder à la mémoire de la machine, pour la création de système d'exploitation et pour de nombreuses autres choses en programmation système.")
  (Shell . "Interpréteur de commandes : l'interface entre l'OS et l'utilisateur ; il existe différente famille, le plus utilisé restant 'bash'.")
  (Assembleur . "L'assembleur est un des langage de plus bas niveau qui convertit des instructions en langages machine.")


  ; Python, framework & bibliothèque
  (Python . "Langage interprété de prototypage. Efficace et très simple d'utilisation ; de nombreuses bibliothèques.")
    (Tkinter . "Bibliothèque Python : permet de créer des interfaces graphiques.")
    (PyGame . "Bibliothèque Python : permet de créer des petits jeux et applications graphiques.")
    (Django . "FrameWork de développement web Python : très bien construit et extrêmement efficace une fois maîtrisé 'Django : the web framework for perfectionists with deadlines'.")
    (Numpy . "Bibliothèque python : boîte à outils scientifiques.")
    (MathPlotLib . "Bibliothèque python : utile pour la visualisation de données, tracé de courbes, de surfaces, de nuages de points....")
    (Sci-kit . "Bibliothèque python : dispose de beaucoup d'implémentation d'algorithmes de machine learning.")

  ; Calcul Numérique & Machine learning
  (R . "Utilisé dans les domaines scientifiques (particulièrement en statistiques et data-mining).")
  (MatLab . "Le langage reconnu pour ces fonctionnalités en analyse numérique et calcul scientifique. Possède de très nombreuses fonctionnalités mais est payant.")
  (Octave . "Logiciel et langage de programmation de calcul numérique, alternative libre et gratuite à Matlab.")
  (Scilab . "Logiciel et langage de programmation de calcul numérique, alternative libre et gratuite à Matlab.")
  (Julia . "Logiciel et langage de programmation de calcul numérique, alternative récente et libre à Matlab. Performant.")

  ; Calcul formel
  (Maple . "Logiciel de calcul formel ; propriétaire et payant.")
  (Sage . "Se veut être ''une alternative viable libre et open source à Magma, Maple, Mathematica et Matlab''. C'est un langage de calcul formel.")

  ; Intelligence artificielle & ontologies
  (LISP . "Le langage de programmation pour intelligence artificielle symbolique le plus populaire de tous. Il est minimaliste et permet d'implémenter de nombreuses choses.")
  (Prolog . "Un langage de programmation français (Cocorico !), il est utilisé en Intelligence Artificielle.")
  (OWL-Lite . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-Lite en est sa version la plus simple, pour les utilisateurs ayant besoin d'une hiérarchie de classification et de contraintes simples.")
  (OWL-DL . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-DL en est une version intermédiaire décidable qui permet une expressivité maximale avec une garantie de calcul.")
  (OWL-Full . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-Full en est sa version la plus libre, indécidable, permettant une expressivité maximale mais sans garantie de calcul.")

  ; Systèmes multi-agents
  (MASSIVE . "Logiciel utilisant les Systèmes Multi-agents (SMA) dans le but de simuler des foules. Il est très utilisé dans les industries du cinéma et du jeu vidéo, notamment dans la trilogie Seigneur des Anneaux ainsi que dans la série Games of Thrones.")
  (MetaTrader4 . "Logiciel utilisant les Systèmes Multi-agents (SMA) dans le domaine de la finance afin d'effectuer du trading automatique.")
  (JADE . "JAVA Agent DEvelopment (JADE) est une plateforme de programmation multi-agents implémentée en Java.")

  ; Bases de données relationnelles
  (PLSQL . "Variante propriétaire d'Oracle ; permet d'implémenter des bases de données relationnelles-objet et dispose de fonctions et fonctionnalités supplémentaires.
  Les bases de données relationnelles-objet sont très efficaces lorsqu'il s'agit de construire des bases de données dont l'accès en lecture est très fréquent.")
  (PostGreSQL . "Variantes libre d'implémentation de SQL la plus populaire. Elle reste la plus plebiscitée car elle est très robuste en terme d'implémentation et veille à suivre de très près les standard SQL.")
  (MySQL . "Variante libre d'implémentation de SQL, simple d'utilisation mais aussi moins bien structurée.")

  ; Bases de données NoSQL
  (Neo4J . "Technologie NoSQL : données représentées sous forme de graphes.")
  (MongoDB . "Technologie NoSQL : données non structurées stockées sous le formalisme JSON")

  ; DIY
  (Arduino . "Cartes électroniques de 'hacking' en license libre. Elles se programment généralement dans un formalisme proche du C et du C++")
  (EthernetShield . "Module qui permet à un Arduino de ce connecter à Internet.")
  (Bluetooth . "Protocole de communication qui peut être facilement utilisé pour des connexions avec d'autres objets via des modules.")
  (RadioTransmitter . "Une solution simple pour communiquer entre des objets, moins onéreuse que le Bluetooth.")
  (Raspberry-Pi . "Mini-ordinateur très utilisé pour réaliser des petits serveurs dans des projets DIY.")

  ; Web
  (HTML . "Formalisme de représentation de données utilisée par les pages web. La base du développement web depuis toujours. Il peut être aussi utilisé pour créer des documents.")
    (JavaScript . "Langage de programmation permettant de faire fonctionner des applications web côté client.")
      (AJAX . ", pour 'Asynchronous JAvascript and Xml'. Architecture qui permet de créer des applications dynamiques. Est utilisé pour les sites web dynamiques mais aussi pour les systèmes multi-agents")
    (PHP . "Le langage de developpement web le plus utilisé.")
      (Symfony . "Sûrement le framework PHP le plus populaire : formalisme Modèle-Vue-Contrôleur")
    (Json . "Un formalisme récent de représentation simple et lisible d'informations ; standard utilisé par beaucoup de langages.")
    (Ruby . "Un langage polyvalent qui 'rend les developpeur heureux'. Il est proche des langages comme Python mais est surtout utilisé pour le developpement web avec Ruby-on-Rails")
    (Ruby-on-Rails . "Le framework Ruby pour le developpement web. Plus populaire que Django.")
    (BootStrap . "Des feuilles de style CSS utilisées par les développeurs qui ne veulent rapidement un site beau et Responsive")
    (Rest . "Technologie très utilisée pour faire des API.")
    (OAuth2 . "Protocole d'authentification utilisé pour les sites web.")

  ; Programmation de logiciel et d'applications smartphone
  (Swift . "Le dernier langage de programmation d'Apple pour développer des applications iPhone et Mac")
  (C# . "Le langage de programmation orientée objet de Microsoft. Il révèle tout son potentiel s'il est utilisé conjointement au framework .NET. Intéressant uniquement si la développement se fait dans un environnement Microsoft.")
  (Java . "Le langage de programmation orienté objet le plus popualire avec le C++.")
  (C++ . "Inspiré du C, il en reprend beaucoup de spécificités et est orienté programmation objet. C'est un langage très plebiscité pour la création de logiciel complexe.")
  (Android-Studio . "Android Studio est l'une des principale plateforme de développement d'applications pour machine sous Android.")

  ; Jeu-Video
  (Unity3D . "Le moteur graphique le plus intéressant pour développer des jeux en 3D avec des graphiques époustouflants !")
  (OpenGL . "Un moteur graphique Open-Source utilisé pour développer beaucoup de jeux.")
  (RPG-Maker . "L'outil le mieux adapté pour réaliser des jeux RPG en 2D.")
  (SpriteKit . "L'outil le mieux adapté pour développer des jeux en 2D sous Mac.")

  ; Rédaction et versionnage
  (LaTeX . "Langage et système de composition de documents. Utilisé pour la rédaction de documents scientifique. Beaucoup de bibliothèque (package)")
  (Git . "Logiciel de versionnage libre ; très puissant pour travailler sur des projets à plusieurs ; permet de minimiser les collisions entre versions.")
  (Word . "Logiciel propriétaire WYSIWYG de Microsoft. Le plus populaire pour la rédaction du document")
  (GoogleDoc . "Solution en ligne de Google. Permet des rédactions de documents à plusieurs très interactive. Nécessite d'être connecté à Internet.")
  (MD . "Une extension de fichier (MD pour 'Markdown Documentation') surtout utilisée pour rédiger des documentations. Les fichiers MD sont facilement interprétables et leur syntaxe est simple d'usage")
  (Etherpad . "Solution libre à GoogleDoc ; est perfectible mais fait le travail.")
  (ShareLatex . "Un éditeur de document LaTeX gratuit disponible en ligne : très utile pour la rédaction de documents collaborative.")
  (Overleaf . "Un autre éditeur de document LaTeX en ligne : il propose des templates intéressants.")

  ; Autres langages de programmation
  (Fortran . "Vieux langage de programmation utilisé pour le calcul scientifique.")
  (Go . "Langage de programmation de Google ; se veut efficace et simple d'apprentissage.")
  (Perl . "Un langage de programmation simple à apprendre. Utile pour déterminer des expressions régulières.")
  (Pascal . "Un langage de programmation ancien; sa syntaxe est simple ce qui lui donne un bon atout pédagogique.")
  )
)

(defparameter *valeurs*
  '(
    (OUI . "Oui.")
    (NON . "Non.")
    (RESOUDREPROBMATH . "Je souhaite résoudre un problème mathématique.")
    (MODELISER . "Je souhaite modéliser un problème.")
    (MODELISERSYSTEMECOMPLEXE . "Je souhaite modéliser un système complexe.")
    (JEUX . "Oui j'aime les jeux.")
    (DECOUVRIR . "Je souhaite découvrir des choses.")
    (MISEENFORMEINFOS . "Je souhaite mettre en forme de l'information.")
    (TRAITEMENTDINFOS . "Je souhaite traiter de l'information.")
    (APPRENTISSAGE . "Je veux apprendre un langage de programmation.")
    (SCIENTIFIQUE . "Le travail a un aspect scientifique et/ou académique.")
    (PASFORCEMENT . "Hmmm ... pas forcément.")
    (COLLABORATIF . "Je souhaite que celui-ci soit collaboratif.")
    (REDACTION . "C'est un travail de rédaction.")
    (EXPRESSION-REGULIERE . "Je souhaite utiliser des expression régulière.")
    (GRAPHE . "Je souhaite représenter les données sous forme de graphe.")
    (DOCUMENT . "Je souhaite représenter les données sous forme de document.")
    (NOSQL . "L'usage de la BDD est tourné vers le NoSQL.")
    (PRIVE . "Je souhaite en faire un usage privé.")
    (GRANDPUBLIC . "Je souhaite en faire un usage grand-public.")
    (RELATIONNEL . "L'usage de la BDD est tourné vers le relationnel.")
    (DATAWARE . "Je souhaite traiter de vastes ensembles de données.")
    (AUTRE . "Non, je veux faire autre chose avec les SMA.")
    (TRADING . "Je veux faire du trading, et/ou utiliser des technologies adaptées à la finance.")
    (SIMULATIONDEFOULE . "Je voudrais simuler le comportement de foule lors d'un évènement particulier.")
    (SMA . "Je veux utiliser des SMA.")
    (SYSTEME-EMBARQUE . "Je veux programmer un système embarqué.")
    (INTERACTION . "Je souhaite créer des fenêtres d'interactions entre l'utilisateur et la machine.")
    (SYSTEME . "Je souhaite définir des processus dans le système et/ou parametrer au mieux ma machine, planifier des tâches ...")
    (DIY . "Je veux bricoler un truc électronique.")
    (LINUX . "Un environnement Linux.")
    (2D . "Mon jeu sera un jeu 2D.")
    (RPG-2D . "Mon jeu sera un RPG-2D.")
    (3D . "Le joueur évoluera dans un environnement 3D.")
    (JEU-VIDEO . "Je veux dévelloper un jeu-vidéo !")
    (APPLET . "Je veux faire une petite application.")
    (SYSTEME-EXPERT . "Je veux faire un système-expert.")
    (MODELE-COMPLEXE . "Je veux modéliser un phénomène ou une situation complexe.")
    (PROTOTYPAGE-RAPIDE . "Je veux rapidement avoir quelque chose de fonctionnel et/ou d'expérimental et/ou facilement modifiable.")
    (MACHINE-LEARNING . "Je préfère des méthodes d'apprentissage statistiques.")
    (CALCUL-FORMEL . "Je veux résoudre ce problème de manière formelle.")
    (INDIVIDUEL . "J'en ferai une utilisation personnelle.")
    (CALCUL-NUMERIQUE . "Je veux résoudre ce problème par des méthode numériques.")
    (NUMERIQUE . "Je veux résoudre ce problème par des méthodes numériques.")
    (FORMELLE . "Je veux résoudre ce problème formellement.")
    (WINDOWS . "Un environnement Windows.")
    (COMPLEXE . "Le document est un travail important.")
    (LOGICIEL . "Je veux développer un logiciel.")
    (ANDROID . "Je veux développer des app Android.")
    (IPHONE . "Je veux développer des app iPhone.")
    (MAC . "Je travaille sur un Mac.")
    (MOBILE . "Je veux développer des applications smartphone.")
    (POPULAIRE . "Je préfère une solution populaire chez les développeurs avec une grande communauté.")
    (CONFIGURABLE . "Je préfère une solution configurable où l'on peut comprendre et modifier à peu près tout.")
    (EFFICACE . "Je veux faire site web d'une taille conséquente avec beaucoup d'utilisateurs l'utilisant.")
    (RESPONSIVE . "Je veux faire un site web qui s'adapte bien à tous types d'appareils.")
    (SIMPLE . "Je veux un site web simple et fonctionnel ; pas besoin qu'il soit spécialement beau.")
    (BONNE . "Je veux un site web simple à mettre en place et d'assez bonne facture.")
    (SITE-WEB . "Je veux faire un site-web.")
    (FAIREDESMODELES . "Je veux faire des modèles prédictifs et/ou d'apprentissage sur ces données.")
    (ORGANISER . "Je souhaite organiser cette information.")
    (FILTRERTEXTE . "Je veux chercher des informations spécifiques dans un ensemble de données textuelles éventuellement grand.")
    (PCETCONSOLES . "Je préfère les jeux PC et consoles.")
    (SMARTPHONE . "Je préfère les jeux sur smartphone.")
    (EQUATIONS . "Je veux résoudre des équations.")
    (SYMBOLIQUE . "Je préfère utiliser une intelligence artificielle symbolique.")
    (INTERACTIONSYS . "Je veux simuler les interactions qu'il peut y avoir dans un système complexe.")
    (DEJAIDEEDEV . "J'ai déjà une idée d'un projet à développer.")))


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
  (PrecisionML . "Que souhaitez-vous faire ?")
  (Machine . "Sur quel système d'explotation travaillez-vous ?")
  (Cible . "Pour quel système developpez-vous ?")
  (CibleJV . "Pour quel système developpez-vous ?")
  (Budget . "Quel budget avez-vous ? Entrez un chiffre.")
  (Usage . "De quel usage avez-vous besoin ?")
  (UsageApp . "De quel usage avez-vous besoin pour votre applet ?")
  (UsageRedac . "De quel usage avez-vous besoin pour la rédaction ?")
  (ParentheseDec . "Voulez-vous découvrir un langage symbolique fondateur ?")
  (Parenthese . "Voulez-vous découvrir un langage symbolique fondateur ?")
  (ModeliserDonnee . "Voulez-vous modéliser un problème basée sur des données ?")
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
  (Recent . "Avez-vous une préférence pour des langages récents ?")
  (Methode . "Comment souhaitez-vous résoudre ce problème ?")
  (Programmation . "Voulez-vous apprendre à programmer ?")
  (SystemeComplexe . "Voulez-vous modéliser un système complexe ?")
  (PrecisionSystemeComplexe . "De quel type de système complexe s'agit-il ?")
  (BeaucoupInfo . "Disposez-vous de beaucoup d'informations ? ")
  (Prefere . "Que préférez-vous entre les jeux PC et les jeux smartphone ?")
  (ControleAcces . "Avez-vous besoin de contrôler l'accès de différents utilisateurs sur cette plateforme ?")
  (ChoixProjet . "Quel est votre projet ?")
  (IntelligenceArtificielle . "Quel paradigme d'IA souhaitez-vous utilisez ?")))

(defparameter *regles* '(

  ; Analyse du besoin

  (((UserStory EQ ResoudreProbMath) (Methode EQ Numerique))
    ((Application EQ Calcul-Numerique)))

  (((UserStory EQ ResoudreProbMath) (Methode EQ Formelle))
    ((Application EQ Calcul-Formel)))

  (((UserStory EQ Modeliser) (SystemeComplexe EQ Oui))
    ((UserStoryPrec EQ ModeliserSystemeComplexe)))

  (((UserStory EQ Modeliser) (SystemeComplexe EQ Non))
    ((UserStoryPrec EQ ModeliserDonnee)))

    (((UserStoryPrec EQ ModeliserDonnee) (IntelligenceArtificielle EQ Symbolique))
      ((Application EQ Systeme-Expert)))

    (((UserStoryPrec EQ ModeliserDonnee) (IntelligenceArtificielle EQ Numerique))
      ((Application EQ Machine-Learning)))

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

  (((UserStory EQ Decouvrir) (AimeJeu EQ Non) (Internet EQ Non) (ParentheseDec EQ Non) (Programmation EQ Oui))
    ((Application EQ Apprentissage)))

  (((UserStory EQ Decouvrir) (AimeJeu EQ Non) (Internet EQ Oui) (Programmation EQ Non) (ParentheseDec EQ Non))
    ((Application EQ Site-Web)))

  (((UserStory EQ Decouvrir) (AimeJeu EQ Non) (Internet EQ Non) (ParentheseDec EQ Oui))
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

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Site-web))
    ((Application EQ Site-web)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Logiciel))
    ((Application EQ Logiciel)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Applet))
    ((Application EQ Applet)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Jeu-video))
    ((Application EQ Jeu-video)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Mobile))
    ((Application EQ Mobile)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Machine-Learning))
    ((Application EQ Machine-Learning)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Systeme))
    ((Application EQ Systeme)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Systeme-Embarque))
    ((Application EQ Systeme-Embarque)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ Systeme-Expert))
    ((Application EQ Systeme-Expert)))

  (((UserStory EQ DejaIdeeDev) (ChoixProjet EQ DIY))
    ((Application EQ DIY)))

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
  (((Application EQ Mobile)(Machine EQ Mac)(Cible EQ iPhone) (Budget > 99))
    ((Propositions EQ (Swift))))
  (((Application EQ Mobile)(Machine EQ Mac)(Cible EQ iPhone) (Budget < 100))
    ((Propositions EQ (Impossible))))

  (((Application EQ Mobile)(Machine EQ Linux)(Cible EQ iPhone))
    ((Propositions EQ (Impossible))))
  (((Application EQ Mobile)(Machine EQ Windows)(Cible EQ iPhone))
    ((Propositions EQ (Impossible))))

  (((Application EQ Mobile) (Cible EQ Android))
    ((Propositions EQ (JAVA Android-Studio))))

  ; Logiciel
  (((Application EQ Logiciel) (PrecisionLogiciel EQ Complexe))
    ((Propositions EQ (C++ JAVA Git))))

  (((Application EQ Logiciel) (PrecisionLogiciel EQ Complexe) (Machine EQ Windows))
    ((Propositions EQ (C# Git))))

  ; Calcul-Numerique
  (((Application EQ Calcul-Numerique) (Budget > 100))
    ((Propositions EQ (Matlab))))

  (((Application EQ Calcul-Numerique) (Budget < 120) (ManipulationMatrice EQ OUI))
    ((Propositions EQ (Octave Scilab Julia Fortran))))

  (((Application EQ Calcul-Numerique) (Budget < 120) (ManipulationMatrice EQ NON))
    ((Propositions EQ (Python MathPlotLib Numpy))))

  ; Calcul-Numerique
  (((Application EQ Calcul-Formel) (Budget < 91))
    ((Propositions EQ (Sage))))

  (((Application EQ Calcul-Formel) (Budget > 90))
    ((Propositions EQ (Maple))))

  ; Machine-Learning
  (((Application EQ Machine-Learning) (PrecisionML EQ Prototypage-Rapide) (Budget < 101) (ManipulationMatrice EQ OUI))
    ((Propositions EQ (Octave))))

  (((Application EQ Machine-Learning) (PrecisionML EQ Prototypage-Rapide) (Budget < 101) (ManipulationMatrice EQ NON))
    ((Propositions EQ (Python Sci-kit MathPlotLib Numpy))))

  (((Application EQ Machine-Learning) (Budget > 100))
    ((Propositions EQ (Matlab))))

  (((Application EQ Machine-Learning) (PrecisionML EQ Modele-Complexe) (Budget < 101))
    ((Propositions EQ (R))))


  ; Système-expert
  (((Application EQ Systeme-Expert) (Parenthese EQ Oui))
    ((Propositions EQ (LISP))))

  (((Application EQ Systeme-Expert) (Parenthese EQ Non))
    ((Propositions EQ (Prolog))))

  ; Applet
  (((Application EQ Applet) (Machine EQ Mac))
    ((Propositions EQ (Swift))))

  (((Application EQ Applet) (Machine EQ Linux))
    ((Propositions EQ (Pygame Tkinter))))

  (((Application EQ Applet) (Machine EQ Windows))
    ((Propositions EQ (Pygame Tkinter))))


  ; Jeu-Video
  (((Application EQ Jeu-Video) (PrecisionJeu EQ 3D) (Budget < 35))
    ((Propositions EQ (Impossible))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 3D) (Budget > 34))
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
    ((Propositions EQ (C++ Unity3D OpenGL))))

  (((Application EQ Jeu-Video) (PrecisionJeu EQ 2D) (CibleJV EQ Linux) (Budget < 35))
    ((Propositions EQ (Pygame))))

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
  (((Application EQ Redaction) (PrecisionRedaction EQ Prototypage-Rapide) (UsageRedac EQ Collaboratif) (LogicielLibre EQ OUI))
    ((Propositions EQ (Git MD Etherpad))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Prototypage-Rapide) (UsageRedac EQ Collaboratif) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (GoogleDoc))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Prototypage-Rapide) (UsageRedac EQ Individuel) (LogicielLibre EQ OUI))
    ((Propositions EQ (MD Etherpad))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Prototypage-Rapide) (UsageRedac EQ Individuel) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (Word))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Complexe) (UsageRedac EQ Individuel) (LogicielLibre EQ PasForcement))
    ((Propositions EQ (GoogleDoc Word))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Complexe) (UsageRedac EQ Individuel) (LogicielLibre EQ OUI))
    ((Propositions EQ (LaTeX))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Complexe) (UsageRedac EQ Collaboratif))
    ((Propositions EQ (Git LaTeX ShareLatex Overleaf))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Scientifique) (UsageRedac EQ Individuel))
    ((Propositions EQ (LaTeX))))

  (((Application EQ Redaction) (PrecisionRedaction EQ Scientifique) (UsageRedac EQ Collaboratif))
    ((Propositions EQ (Git LaTeX))))

  ; Apprentissage
  (((Application EQ Apprentissage) (Recent EQ OUI))
    ((Propositions EQ (Python Go))))

  (((Application EQ Apprentissage) (Recent EQ PasForcement))
    ((Propositions EQ (Perl Pascal))))
))

(defun attribut (triplet)
  (car triplet))

(defun operateur (triplet)
  (cadr triplet))

(defun valeur (triplet)
  (caddr triplet))

(defun conclusion (r)
  ; Renvoie les conclusions d'une règle
  (cadr r))

(defun declenchable? (r)
  ; Renvoie t si la règle est déclenchable ; nil sinon
  (let (
      (OK t)
      (premisses (car r)))
    (dolist (p premisses OK) ; pour chaque premisses de r
       ; si l'attribut a une valeur numérique mais n'est pas présent dans les faits
      (if (and (numberp (valeur p)) (not (valeur (assoc (attribut p) *faits*))))
        (setq OK nil)
         ; s'il est présent mais si sa valeur ne vérifie pas la prémisse p
        (if (not (funcall (operateur p) (valeur (assoc (attribut p) *faits*)) (valeur p)))
          (setq OK nil))))))

(defun ajouter (resultats)
  ; Ajoute un résultat à la base de faits *faits*
  (dolist (triplet resultats)
    (if (assoc (attribut triplet) *faits*) ; si l'attribut est déjà présent dans la base
      (setf (caddr (assoc (attribut triplet) *faits*)) (valeur triplet)) ; on remplace sa valeur
      (push triplet *faits*)))) ; sinon on rajoute triplet à la base de faits

(defun askQuestion ()
  (let ((attribut (car (set-difference (listeAttRegles) (listeAttFaits))) valeur))
    ; "attribut" est le premier élément de la différence entre :
    ; - la liste des attributs dans la base de faits
    ; - la liste des attributs dans la base de règles (prémisses)
    ; C'est-à-dire un attribut dont la valeur est inconnue.
    (if attribut
      (if (numberp (car (AttValues attribut))) ; la valeur de celui-ci est-elle un nombre ?
        (until
          (AND
            (not (format t "------~&~S~%------~%Votre choix (nombre) : " (questionAssociee attribut)))
            (numberp (setq valeur (read))))) ; Redemande tant que son choix n'est pas valide
        (until
          (AND
            ; liste les valeurs possibles de l'attribut et fait lire un choix à l'utilisateur
            (not (format t "------~&~S~%------~%~%~S~%~%Votre choix : " (questionAssociee attribut) (afficherchoix (delete-duplicates (AttValues attribut)))))
            (member (setq valeur (read)) (delete-duplicates (AttValues attribut))))))
            ; Redemande tant que son choix n'est pas valide
      (error "Nous n'avons rien pu trouver."))
    (sleep 1)
    (pushnew (list attribut 'EQ valeur) *faits*)))


(defun listeAttFaits ()
  ; retourne la liste des attributs
  ; présents dans la base de faits
  (loop for fait in *faits*
    collect (attribut fait)))

(defun listeAttRegles ()
  ; retourne la liste des attributs non valués dans les règles
  ; ayant des attributs déjà valués
  (if *faits*
    ;pour chaque règle contenant un attribut valué, récupérer les attributs
    (loop for regle in
      ;constitution de la liste des règles contenant un attribut valué
      (loop for fait in *faits*
        append
          (loop for regle in *regles*
            if (member fait (car regle) :test 'equal)
              ;si la règle contient un attribut valué, la collecter
              collect regle))
      append
        ;Récupération des attributs de la règle
        (loop for premisse in (car regle)
          collect (attribut premisse)))
    ;Si aucun fait n'est valué (présent dans *faits*), sélectionner tous les attributs
    (loop for regle in *regles*
      append (loop for premisse in (car regle)
          collect (attribut premisse)))))

(defun AttValues (attribut)
  ; retourne la liste des valeurs
  ; qu'un attribut peut prendre
  (loop for regle in *regles*
    if (assoc attribut (car regle))
    collect (valeur (assoc attribut (car regle)))))

(defun questionAssociee (attribut)
  ; retourne la question associée
  ; à un attribut dans la base *questions*
  ; ou celui-ci si cette dernière n'est pas présente
  (or (cdr (assoc attribut *questions*)) attribut))

(defun afficherChoix (listeAttribut)
  ; renvoie une string pour apporter une précision
  ; sur les différents choix
  (setq stringRetour "")
  (loop for a in listeAttribut
    do (setq stringRetour (concatenate 'string stringRetour "~% -» "(symbol-name a) " : "(descriptionAttribut a))))
    (format nil stringRetour))

(defun descriptionAttribut (attribut)
  ; retourne la description associée
  ; à un attribut dans la base *valeurs*
  ; ou celle-ci si cette dernière n'est pas présente
  (or (cdr (assoc attribut *valeurs*)) (symbol-name attribut)))

(defun afficherPropositions ()
  ; Affichage final des propositions
  (if (member 'Impossible (caddr (assoc 'Propositions *faits*)))
    (format t "~%Il n'y a pas de solution possible dans votre cas, désolé.")
  (let ((prop (caddr (assoc 'Propositions *faits*))) (overlay '------------------))
    (format t "~&~A~&Voici les différentes technologies que je vous propose : " overlay)
    (dolist (x prop)
      (format t "~& -» ~A : ~S" x (descriptionTechno x)))
    (format t "~&~A~&" overlay))))

(defun descriptionTechno (techno)
  ; retourne la description associée
  ; à une technologie dans la base *technologies*
  ; ou celle-ci si cette dernière n'est pas présente
  (or (cdr (assoc techno *technologies*)) techno))

(defun chainageAvantLarg () ; Moteur chaînage avant en largeur
  (let (EC regleCourante)
    (loop ; on boucle
      (if (valeur (assoc 'Propositions *faits*)) ; si le but est présent dans la base de faits avec une valeur non nulle
        (progn
          (funcall 'afficherPropositions) ; on affiche les propositions
          (return nil)) ; et on arrête
        (dolist (r *regles*) ; sinon on parcourt les règles dans la base de règles
          (when (declenchable? r); si une règle est déclenchable
            (setq EC (append EC (list r))) ; on l'ajoute à l'ensemble contraint EN FIN
            (setq *regles* (remove r *regles* :test 'equal))))); on l'enlève de la base de règles
      (if EC ; si on peut encore déclencher des règles
        (progn
          (setq regleCourante (pop EC)) ; on choisit la dernière obtenue
          (ajouter (conclusion regleCourante))) ; on ajoute son résultat à la base de faits
        (askQuestion))))) ; sinon on pose une question

(defun chainageAvantProf () ; Moteur chaînage avant en profondeur
  (let (EC regleCourante)
    (loop ; on boucle
      (if (valeur (assoc 'Propositions *faits*)) ; si le but est présent dans la base de faits avec une valeur non nulle
        (progn
          (funcall 'afficherPropositions) ; on affiche les propositions
          (return nil)) ; et on arrête
        (dolist (r *regles*) ; sinon on parcourt les règles dans la base de règles
          (when (declenchable? r); si une règle est déclenchable
            (push r EC) ; on l'ajoute à l'ensemble contraint EN TÊTE
            (setq *regles* (remove r *regles* :test 'equal))))) ; on l'enlève de la base de règles
      (if EC ; si on peut encore déclencher des règles
        (progn
          (setq regleCourante (pop EC)) ; on choisit la dernière obtenue
          (ajouter (conclusion regleCourante))) ; on ajoute son résultat à la base de faits
        (askQuestion))))) ; sinon on pose une question

(defun cactus (&optional introduction moteur)
  (let (path (startAtt 'UserStory) valeur)
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
