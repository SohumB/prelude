(prelude-require-package 'flycheck-vale)
(flycheck-vale-setup)
(flycheck-add-mode 'vale 'gfm-mode)
(flycheck-add-mode 'vale 'adoc-mode)
