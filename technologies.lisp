(defparameter *technologies*
'(

  (C . "Un des langages les plus populaires et très bien structuré ; utilisé pour accéder à la mémoire de la machine, pour la création de système d'exploitation et pour de nombreuses autres choses en programmation système.")
  (Shell . "Interpréteur de commandes : l'interface entre l'OS et l'utilisateur ; il existe différente famille, le plus utilisé restant 'bash'.")

  (Python . "Langage interprété de prototypage. Efficace et très simple d'utilisation ; de nombreuses bibliothèques.")
    (Tkinter . "Bibliothèque Python : permet de créer des interfaces graphiques.")
    (PyGame . "Bibliothèque Python : permet de créer des petits jeux et applications graphiques.")
    (Django . "FrameWork de développement web Python : très bien construit et extremement efficace une fois maîtrisé 'Django : the web framework for perfectionists with deadlines'.")
    (Numpy . "Bibliothèque python : boîte à outils scientifiques."
    (MathPlotLib . "Bibliothèque python : utile pour la visualisation de données (tracé de courbes, de surfaces, de nuages de points...).")
    (Sci-kit . "Bibliothèque python : dispose de beaucoup d'implémentation d'algorithme de machine learning.")

  (R . "Utilisé dans les domaines scientifiques (particulièrement en statistiques et data-mining).")
  (MatLab . "Le langage reconnu pour ces fonctionalité en analyse numérique et calcul scientifique. Possède de très nombreuses fonctionalités mais est payant.")
  (Octave . "Logiciel et langage de programmation de calcul numérique, alternative libre et gratuite à Matlab.")
  (Scilab . "Logiciel et langage de programmation de calcul numérique, alternative libre et gratuite à Matlab.")
  (Julia . "Logiciel et langage de programmation de calcul numérique, alternative récente et libre à Matlab. Performant.")

  (Maple . "Logiciel de calcul formel ; propriétaire et payant.")
<<<<<<< HEAD
  (Sage . "Se veut être ''une alternative viable libre et open source à Magma, Maple, Mathematica et Matlab''. C'est un langage de calcul formel.")

  (LISP . "Le langage de programmation pour intellience artificielle symbolique le plus populaire de tous. Il est minimaliste et permet d'implémenter de nombreuses choses.")
  (Scheme . "Scheme est basé sur LISP ; ce fut un des premiers langages de programmation orientée objet.")
  (Prolog . "Un langage de programmation français (Cocorico !), il est utilisé en Intelligence Artificielle.")
=======
  (Sage . "Se veut être ''une alternative viable libre et open source à Magma, Maple, Mathematica et Matlab''.")

  (LISP . "(((((((((((((((((((((LE FAMEUX)))))))))))))))))))))")
  (Scheme . "A COMPLETER")
  (Prolog . "Un langage de programmation français (Cocorico !), il est utilisé en Intelligence Artificielle.")
  (OWL-Lite . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-Lite en est sa version la plus simple, pour les utilisateurs ayant besoin d'une hiérarchie de classification et de contraintes simples.")
  (OWL-DL . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-DL en est une version intermédiaire décidable qui permet une expressivité maximale avec une garantie de calcul.")
  (OWL-Full . "Langage de représentation des connaissances construit sur le modèle de données de RDF. Basé sur la logique de description, Web Ontology Language (OWL) permet de définir des ontologies web structurées. OWL-Full en est sa version la plus libre, indécidable, permettant une expressivité maximale mais sans garantie de calcul.")

  (MASSIVE . "Logiciel utilisant les Systèmes Multi-agents (SMA) dans le but de simuler des foules. Il est très utilisé dans les industries du cinéma et du jeu vidéo, notamment dans la trilogie Seigneur des Anneaux ainsi que dans la série Games of Thrones.")
  (MetaTrader4 . "Logiciel utilisant les Systèmes Multi-agents (SMA) dans le domaine de la finance afin d'effectuer du trading automatique.")
  (JADE . "JAVA Agent DEvelopment (JADE) est une plateforme de programmation multi-agent implémentée en Java.")
>>>>>>> 3db83ae17340f13581560c59eb589e7d6e2eb6f5

  (SQL . "Le standard des bases de données relationnelles : c'est à la fois un langage et une technologies d'implémenation de BDD ; connait plusieurs variantes d'implémentations.")
    (PL/SQL . "Variante propriétaire d'Oracle ; permet d'implémenter des bases de données relationnelles-objet et dispose de fonctions et fonctionnalités supplémentaires.
    Les bases de données relationnelles-objet sont très efficaces lorsqu'il s'agit de construire des bases de données dont l'accès en lecture est très fréquent.")
    (PostGreSQL . "Variantes libre d'implémentation de SQL la plus populaire. Elle reste la plus plebiscitée car elle est très robuste en terme d'implémentation et veille à suivre de très près les standard SQL.")
    (MySQL . "Variantes libre d'implémentation de SQL, simple d'utilisation mais aussi moins bien structurée.")

  (VBA . "Permet de créer des applications légères dans Excel pour traiter des petits ensemble de données ; solution accessible aux non informaticiens car elle permet de créer facilement des petits formulaires et applications.
  Cependant c'est une solution payante.")

  (Arduino . "Cartes électroniques de 'hacking' en license libre. Elles se programment généralement dans un formalisme proche du C et du C++")

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

  (Swift . "Le dernier langage de programmation d'Apple pour développer des applications iPhone et Mac")
  (Objective-C . "L'ancien langage de programmation d'Apple pour développer des applications iPhone et Mac")
  (C# . "Le langage de programmation orientée objet de Microsoft. Il révèle tout son potentiel s'il est utilisé conjointement au framework .NET. Intéressant uniquement si la développement se fait dans un envirronement Microsoft.")
  (Java . "Le langage de programmation orientée objet")
  (C++ . "Inspiré du C, il en reprend beaucoup de spécificités et est orienté programmation objet. C'est un langage très plebiscité pour la création de logiciel complexe.")

  (Neo4J . "Technologie NoSQL : données représentées sous forme de graphes.")
  (MongoDB . "Technologie NoSQL : données non structurées stockées sous le formalisme JSON")
  (Cansadra . "Technologie NoSQL : A COMPLETER")

  (LaTeX . "Langage et un système de composition de documents. Utilisé pour la rédaction de documents scientifique. Beaucoup de bibliothèque (package)")
  (MD . "Une extension de fichier (MD pour 'Markdown Documentation') surtout utilisée pour rédiger des documentations. Les fichiers MD sont facilement interprétable et leur synthaxe est simple d'usage")

  (Fortran . "Vieux langage de programmation utilisé pour le calcul scientifique")
  (Go . "Langage de programmation de Google ; se veut efficace et simple d'apprentissage.")
  (Perl . "Un langage de programmation simple à apprendre. Utile pour déterminer des expressions régulières")
  (Pascal . "Un langage de programmation ancien; sa synthaxe est simple ce qui lui donne un bon atout pédagogique.")
  (Scala . "acronyme de ''Scalable Language'' ; langage péblicité pour des applications nécessitant de gérer de nombreuses tâches en parallèles.")
  )
)
