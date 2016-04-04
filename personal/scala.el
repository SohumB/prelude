(prelude-require-package 'ensime)

(require 'prelude-scala)
(require 'ensime)

(add-hook 'prelude-scala-mode-hook 'ensime-scala-mode-hook)
