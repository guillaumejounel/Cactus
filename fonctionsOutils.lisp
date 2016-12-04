(defun afficherPropositions ()
	(let ((prop (caddr (assoc 'Propositions *faits*))))
		(format t "~&------------------~&Voici les différentes technologies que je vous propose : ")
		(dolist (x prop)
			(format t "~& -» ~A : ~S" x (cdr (assoc x *technologies*)))))
	'------------------)

;;Fonctions outils pour les règles
(defun conclusion (r)
	(cadr r))

;; Fonctions outils pour les triplets
(defun objet (triplet)
	(car triplet))

(defun operateur (triplet)
	(cadr triplet))

(defun valeur (triplet)
	(caddr triplet))

(defun declenchable? (r)
	(let (
			(OK t)
			(premisses (car r))
		)
		(dolist (p premisses OK)
			(if (not (funcall (operateur p) (valeur (assoc (objet p) *faits*)) (valeur p)))
				(setq OK nil)))))


; (case (operateur p)
; 	('=
; 		(if (not (eq (valeur p) (valeur (assoc (objet p) *faits*))))
; 			(setq OK nil)))
; 	('>
; 		(if (not (eq (valeur p) (valeur (assoc (objet p) *faits*))))
; 		(setq OK nil)))
; 	('>=
; 		(if (not (eq (valeur p) (valeur (assoc (objet p) *faits*))))
; 			(setq OK nil)))
; 	('<
; 		(if (not (eq (valeur p) (valeur (assoc (objet p) *faits*))))
; 			(setq OK nil)))
; 	('<=
; 		(if (not (eq (valeur p) (valeur (assoc (objet p) *faits*))))
; 			(setq OK nil))))

(defun ajouter (resultats)
	; Ajoute un résultat à la base de faits *faits*
	; triplet de la forme (objet opérateur valeur)
	(dolist (triplet resultats)
		(if (assoc (objet triplet) *faits*) ; si l'objet est déjà présent dans la base
			(setf (caddr (assoc (objet triplet) *faits*)) (caddr triplet)) ; on remplace sa valeurs
			(push triplet *faits*)))) ; sinon on rajoute triplet à la base de faits
