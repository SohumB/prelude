(prelude-require-packages '(scala-mode ensime))
(require 'prelude-scala)
(require 'ensime)
(setf ensime-startup-snapshot-notification nil)
;(setq ensime-server-version "2.0.0-graph-SNAPSHOT")
;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'sp-hybrid-mode)

(add-hook 'scala-mode-hook (lambda () (scala-mode:goto-start-of-code)))
