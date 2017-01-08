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
