(setq prelude-whitespace nil)

(prelude-require-package 'ethan-wspace)
(require 'ethan-wspace)
(global-ethan-wspace-mode t)

(defun tabs-are-fine () (setq ethan-wspace-errors (remove 'tabs ethan-wspace-errors)))
(add-hook 'makefile-mode-hook 'tabs-are-fine)
