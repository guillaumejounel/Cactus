
(setq attBR nil)
(dolist (r *regles*) (dolist (y (car (last (assoc 'propositions (conclusion r))))) (pushnew y attBR)))
(setq attBF (loop for a in *technologies* collect (car a)))
(delete-duplicates (set-difference attBF attBr))



(setq attBR nil)
(dolist (r *regles*) (dolist (y (car (last (assoc 'propositions (conclusion r))))) (pushnew y attBR)))
(setq attBF (loop for a in *technologies* collect (car a)))

(loop for a in (set-difference attBR attBF) do (print a))
(loop for a in (set-difference attBF attBR) do (print a))
