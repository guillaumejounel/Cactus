(defun init (path)
  (load (concatenate 'string path "technologies.lisp"))
  (load (concatenate 'string path "regles.lisp"))
  (load (concatenate 'string path "fonctionsOutils.lisp"))
  (load (concatenate 'string path "faits.lisp"))
  (load (concatenate 'string path "moteur.lisp"))
  (load (concatenate 'string path "askQuestion.lisp"))
  (ChainageAvantLarg)
)

;examples:
;(init "~/Cloud/WORK/UTC/GI01/IA01/Cactus/")
