;; Bases de règles et de faits simple pour tester les moteurs

(setq *BF* '(A B G J))
(setq *BR* '(
	((A) C)
	((C) E)
	((E) F)
	((A B) D)
	((F G) I)
	((J I E) X)
	((F D) J)
	)
)
