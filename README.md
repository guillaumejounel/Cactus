# Cactus
##Expert system permitting you to choose the best programming language for you needs.
----------
###Problématique
Tous les programmeurs sont un jour confrontés au problème suivant :
>« Quels langages de programmation sont les plus adaptés pour le projet
> que je souhaite développer dans mon cas d’utilisation ? »





Pour pallier à ce problème, nous allons concevoir un système expert qui propose différentes possibilités les plus adaptées selon l’usage.
Pour cela, nous prendrons en compte de multiples critères tels que le domaine d’application (Calcul numérique, Intelligence Artificielle...), l’expérience de l’utilisateur ou encoreles caractéristiques de sa machine (Linux, MacOS...).

###Sources de connaissances sur le sujet
Les sources d’expertise ne manquent pas : il existe de nombreux sites et ressources sur le Net qui donnent les avantages et inconvénients de tous les langages de programmation existants selon les cas d’utilisation. En voici quelques uns :
 - Wikipédia : Liste des langages de programmations par type : https://en.wikipedia.org/wiki/List_of_p
 - Learneroo : The Different Programming Languages : https://www.learneroo.com/modules/12/nodes/9
 - https://program-ace.com/press-room/articles/10-most-popular-programming-languages-2016

###Exemple d’intéractions

Voici l’exemple parfait d’intéractions que l’on pourrait imaginer entre l’utilisateur et
notre système :

>**Utilisateur**: Hello !
>**Système**: Salut ! Tu souhaites développer quelque chose ou trouver un langage de programmation pour autre chose ?
>**Utilisateur**: [*Développer quelque chose*] – Autre chose
>**Système**: Très bien, tu souhaites développer une application web ?
>**Utilisateur**: Oui – [*Non*] – Je ne sais pas – Je ne suis pas sûr.
>**Système**: Que souhaites-tu développer ?
>**Utilisateur**: [*Petite application graphique*] – Jeu-vidéo – Application Smart-Phone
>– Système Expert.
>**Système**: Est-ce que tu te sens à l’aise avec Python ?
>**Utilisateur** : Complètement – [*Plutôt bien*] – Pas trop – Non, pas tellement
>**Système** : Dans ce cas je te conseille d’utiliser :
>- ***Python avec Tkinter*** : permet de créer des interfaces graphiques (bibliothèque Tk ; *plus d’information ici* ;
>- ***Python avec Pygame*** : adapté pour faire des petits jeux ; *plus d’information ici* ;
>**Utilisateur** : [*Très bien, ça me va !*] – Je veux trouver autre chose

###Exemple de règle

L’exemple ci-dessus donne déjà quelques idées pour les règles que l’on pourrait implé-
menter :
  1. `SI Niveau Utilisateur Python Très Bon ou Bon ALORS Proposer(Tkinter,Tk).`
  2. `SI Utilisateur connait Python ALORS demander niveau de programmation.`
  3. `SI Utilisateur veut-developper système-expert ALORS proposer LISP.`

###Contraintes et difficultés à prendre en compte

La principale difficulté de notre projet sera de trouver un moyen de rendre accès in-
teractif les échanges sous formes de questions avec le système. Une autre difficulté sera la
représentation des connaissances et leur structuration sous LISP.

###Liste de règles :

On début on demande pour avoir le choix entre deux options : Calcul ou Dev

*Calcul* ou *Dev*

**Pour le calcul :**
```
SI (Calcul = Numerique ET License = OpenSource ET Prix = Gratuit) ALORS (Scilab Octave Julia)
SI (Calcul = CalculNumerique ET Prix = Payant) ALORS (MathLab)
SI (Calcul = CalculFormel) ALORS (XCAS ou MAPLE)
SI (Calcul = MachineLearning) ALORS (Sci-kit)
```
**Pour le Dev :**
```
SI (Application = SiteWebSimple) ALORS (PHP MySQL)
SI (Application = SiteWebResponsive) ALORS (PHP MySQL BootStrap JavaScript)
SI (Application = SiteWebEfficace) ALORS (Django Ruby-on-Rails)
SI (Application = Mobile ET Machine = Mac ET Cible = iPhone) ALORS (Swift)
SI (Application = Mobile ET Cible = Android) ALORS (?)
SI (SiteWeb = Efficace ET Python) ALORS (Django)
SI (Application = SystemeExpert ET Parenthèse = Supporte) ALORS (LISP)
SI (Application = Logiciel ET Precision = Solide) ALORS (C++ JAVA)
SI (Application = Logiciel ET Precision = Solide ET Machine = Windows) ALORS (C#)
SI (Application = Applet ET Precision = Simple) ALORS (Pygame Tkinter)
SI (Application = Systeme) ALORS (Shell Tkinter)
SI (Application = Jeu-Vidéo ET Precision = 3D) ALORS (C++ Unity3D)
SI (Application = DIY ET Precision = NoInternet) ALORS (Arduino)
SI (Application = DIY ET Precision = Internet) ALORS (Raspberry-Pi)
SI (Application = SystemeEmbarque) ALORS (Assembleur)
```
