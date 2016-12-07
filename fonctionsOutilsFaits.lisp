;; Fonctions outils pour les faits (triplets)
(defun objet (triplet)
  (car triplet))

(defun operateur (triplet)
  (cadr triplet))

(defun valeur (triplet)
  (caddr triplet))
