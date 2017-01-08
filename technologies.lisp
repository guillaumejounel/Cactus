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
    (Django . "FrameWork de développement web Python : très bien construit et extremement efficace une fois maîtrisé 'Django : the web framework for perfectionists with deadlines'.")
    (Numpy . "Bibliothèque python : boîte à outils scientifiques.")
    (MathPlotLib . "Bibliothèque python : utile pour la visualisation de données tracé de courbes, de surfaces, de nuages de points....")
    (Sci-kit . "Bibliothèque python : dispose de beaucoup d'implémentation d'algorithme de machine learning.")

  ; Calcul Numérique & Machine learning
  (R . "Utilisé dans les domaines scientifiques (particulièrement en statistiques et data-mining).")
  (MatLab . "Le langage reconnu pour ces fonctionalité en analyse numérique et calcul scientifique. Possède de très nombreuses fonctionalités mais est payant.")
  (Octave . "Logiciel et langage de programmation de calcul numérique, alternative libre et gratuite à Matlab.")
  (Scilab . "Logiciel et langage de programmation de calcul numérique, alternative libre et gratuite à Matlab.")
  (Julia . "Logiciel et langage de programmation de calcul numérique, alternative récente et libre à Matlab. Performant.")

  ; Calcul formel
  (Maple . "Logiciel de calcul formel ; propriétaire et payant.")
  (Sage . "Se veut être ''une alternative viable libre et open source à Magma, Maple, Mathematica et Matlab''. C'est un langage de calcul formel.")

  ; Intelligence artificielle & ontologies
  (LISP . "Le langage de programmation pour intellience artificielle symbolique le plus populaire de tous. Il est minimaliste et permet d'implémenter de nombreuses choses.")
  (Prolog . "Un langage de programmation français (Cocorico !), il est utilisé en Intelligence Artificielle.")
  (OWL-Lite . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-Lite en est sa version la plus simple, pour les utilisateurs ayant besoin d'une hiérarchie de classification et de contraintes simples.")
  (OWL-DL . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-DL en est une version intermédiaire décidable qui permet une expressivité maximale avec une garantie de calcul.")
  (OWL-Full . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-Full en est sa version la plus libre, indécidable, permettant une expressivité maximale mais sans garantie de calcul.")

  ; Systèmes multi-agents
  (MASSIVE . "Logiciel utilisant les Systèmes Multi-agents (SMA) dans le but de simuler des foules. Il est très utilisé dans les industries du cinéma et du jeu vidéo, notamment dans la trilogie Seigneur des Anneaux ainsi que dans la série Games of Thrones.")
  (MetaTrader4 . "Logiciel utilisant les Systèmes Multi-agents (SMA) dans le domaine de la finance afin d'effectuer du trading automatique.")
  (JADE . "JAVA Agent DEvelopment (JADE) est une plateforme de programmation multi-agent implémentée en Java.")

  ; Bases de données relationnelles
  (SQL . "Le standard des bases de données relationnelles : c'est à la fois un langage et une technologies d'implémenation de BDD ; connait plusieurs variantes d'implémentations.")
    (PLSQL . "Variante propriétaire d'Oracle ; permet d'implémenter des bases de données relationnelles-objet et dispose de fonctions et fonctionnalités supplémentaires.
    Les bases de données relationnelles-objet sont très efficaces lorsqu'il s'agit de construire des bases de données dont l'accès en lecture est très fréquent.")
    (PostGreSQL . "Variantes libre d'implémentation de SQL la plus populaire. Elle reste la plus plebiscitée car elle est très robuste en terme d'implémentation et veille à suivre de très près les standard SQL.")
    (MySQL . "Variantes libre d'implémentation de SQL, simple d'utilisation mais aussi moins bien structurée.")

  (VBA . "Permet de créer des applications légères dans Excel pour traiter des petits ensemble de données ; solution accessible aux non informaticiens car elle permet de créer facilement des petits formulaires et applications.
  Cependant c'est une solution payante.")

  ; Bases de données NoSQL
  (Neo4J . "Technologie NoSQL : données représentées sous forme de graphes.")
  (MongoDB . "Technologie NoSQL : données non structurées stockées sous le formalisme JSON")

  ; DIY
  (Arduino . "Cartes électroniques de 'hacking' en license libre. Elles se programment généralement dans un formalisme proche du C et du C++")
  (Raspberry-Pi . "Mini-ordinateur très utilisé pour réaliser des petits serveurs dans des projets DIY.")

  ; Web
  (HTML . "Formalisme de représentation de données utilisée par les pages web. La base du développement web depuis toujours. Il peut être aussi utilisé pour créer des documents.")
    (JavaScript . "Langage de programmation permettant de faire fonctionner des applications web côté client.")
      (NodeJS . "Plate-forme construite sur le moteur d'exécution JavaScript de Google Chrome. Permet de créer facilement des applications réseau rapides, évolutives et scalables.")
      (AJAX . ", pour 'Asynchronous JAvascript and Xml'. Architecture qui permet de créer des applications dynamiques. Est utilisé pour les sites web dynamiques mais aussi pour les systèmes multi-agent")
    (PHP . "Le langage de developpement web le plus utilisé.")
      (Symfony . "Sûrement le framework PHP le plus populaire : formalisme Modèle-Vue-Contrôleur")
    (Json . "Un formalisme récent de représentation simple et lisible d'informations ; standard utilisé par beaucoup de langages.")
    (XML . "Un formalisme plus ancien de représentation simple et lisible d'informations ; standard utilisé par beaucoup de langages.")
    (Ruby . "Un langage polyvalent qui 'rend les developpeur heureux'. Il est proche des langages comme Python mais est surtout utilisé pour le developpement web avec Ruby-on-Rails")
    (Ruby-on-Rails . "Le framework Ruby pour le developpement web. Plus populaire que Django.")
    (BootStrap . "Des feuilles de style CSS utilisées par les développeurs qui ne veulent rapidement un site beau et Responsive")
    (RestAPI . "Technologie très utilisée pour faire des API.")
    (OAuth2 . "Protocole d'authentification utilisé pour les sites web.")
  ; Programmation de logiciel et d'applications smartphone
  (Swift . "Le dernier langage de programmation d'Apple pour développer des applications iPhone et Mac")
  (Objective-C . "L'ancien langage de programmation d'Apple pour développer des applications iPhone et Mac")
  (C# . "Le langage de programmation orientée objet de Microsoft. Il révèle tout son potentiel s'il est utilisé conjointement au framework .NET. Intéressant uniquement si la développement se fait dans un envirronement Microsoft.")
  (Java . "Le langage de programmation orienté objet")
  (C++ . "Inspiré du C, il en reprend beaucoup de spécificités et est orienté programmation objet. C'est un langage très plebiscité pour la création de logiciel complexe.")
  (Android-Studio. "Android Studio est l'une des principale plateforme de développement d'applications pour machine sous Android.")

  ; Jeu-Video
  (Unity3D . "Le moteur graphique le plus intéressant pour développer des jeux en 3D avec des graphiques époustouflants !")
  (OpenGL . "Un moteur graphique Open-Source utilisé pour développer beaucoup de jeux.")
  (RPG-Maker . "L'outil le mieux adapté pour réaliser des jeux RPG en 2D.")
  (SpriteKit . "L'outil le mieux adapté pour développer des jeux en 2D sous Mac.")

  ; Rédaction et versionnage
  (LaTeX . "Langage et un système de composition de documents. Utilisé pour la rédaction de documents scientifique. Beaucoup de bibliothèque (package)")
  (Git . "Logiciel de versionnage libre ; très puissant pour travailler sur des projets à plusieurs ; permet de minimiser les collisions entre versions.")
  (Word . "Logiciel propriétaire WYSIWYG de Microsoft. Le plus populaire pour la rédaction du document")
  (GoogleDoc . "Solution en ligne de Google. Permet des rédactions de documents à plusieurs très interactive. Nécessite d'être connecté à Internet.")
  (MD . "Une extension de fichier (MD pour 'Markdown Documentation') surtout utilisée pour rédiger des documentations. Les fichiers MD sont facilement interprétable et leur syntaxe est simple d'usage")
  (Etherpad . "Solution libre à GoogleDoc ; est perfectible mais fait le travail.")
  (ShareLatex . "Un éditeur de document LaTeX gratuit disponible en ligne : très utile pour la rédaction de documents collaborative.")
  (Overleaf . "Un autre éditeur de document LaTeX en ligne : il propose des templates intéressants.")

  ; Autres langages de programmation
  (Fortran . "Vieux langage de programmation utilisé pour le calcul scientifique")
  (Go . "Langage de programmation de Google ; se veut efficace et simple d'apprentissage.")
  (Perl . "Un langage de programmation simple à apprendre. Utile pour déterminer des expressions régulières")
  (Pascal . "Un langage de programmation ancien; sa &xe est simple ce qui lui donne un bon atout pédagogique.")
  (Scala . "acronyme de ''Scalable Language'' ; langage péblicité pour des applications nécessitant de gérer de nombreuses tâches en parallèles.")
  )
)
