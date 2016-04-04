(prelude-require-package 'elm-mode)
(add-hook 'elm-mode-hook (lambda ()
                            (set (make-local-variable 'company-backends) '(company-elm))))
