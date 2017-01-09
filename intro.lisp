(defparameter *cactus*
"     ,`''',
      ;' ` ;
      ;`,',;
      ;' ` ;
 ,,,  ;`,',;
;,` ; ;' ` ;   ,',
;`,'; ;`,',;  ;,' ;                                    ,d
;',`; ;` ' ; ;`'`';                                    88
;` '',''` `,',`',;,   adPPYba, ,adPPYYba,  ,adPPYba, MM88MMM 88       88 ,adPPYba,
 `''`'; ', ;`'`'     a8'     ' ''     `Y8 a8'     ''   88    88       88 I8[    ''
      ;' `';        8b         ,adPPPPP88 8b           88    88       88  `'Y8ba,
      ;` ' ;        '8a,   ,aa 88,    ,88 '8a,   ,aa   88,   '8a,   ,a88 aa    ]8I
      ;' `';         `'Ybbd8'' `'8bbdP'Y8  `'Ybbd8''   'Y888  `'YbbdP'Y8 `'YbbdP''
      ;` ' ;
      ; ',';
      ;,' ';")

(defun intro ()
  (format t "~%~%")
  (dotimes (x 20) ;Simulation d'une barre de chargement.
    (sleep (- 0.2 (* 0.01 x)))
    (format t "=="))
  (format t "~%~s" *cactus*)
  (format t "~%~%")
  (format t "Bienvenue sur l'interface d'interaction du système expert Cactus !~%")
  (sleep 3)
  (format t "Celui-ci va vous poser des questions concernant ce que vous souhaitez réaliser~%")
  (format t "afin de trouver une ou plusieurs technologies adaptées à votre projet.~%~%")
  (sleep 6)
  (format t "À chaque question, vous devrez répondre en sélectionnant une des propositions proposées.~%")
  (sleep 3)
  (format t "Lorsqu'il s'agira de saisir une valeur numérique cela sera indiqué.~%")
  (sleep 3)
  (format t "~%Commençons ! ~%~%")
  (sleep 2)
)
