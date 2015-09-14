(prelude-require-packages '(scala-mode2 ensime))
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'sp-hybrid-mode)
