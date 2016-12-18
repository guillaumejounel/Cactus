;; Fonctions outils pour les faits (triplets)
(defun attribut (triplet)
  (car triplet))

(defun operateur (triplet)
  (cadr triplet))

(defun valeur (triplet)
  (caddr triplet))
