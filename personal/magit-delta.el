(prelude-require-package 'magit-delta)
(add-hook 'magit-mode-hook (lambda () (magit-delta-mode +1)))
