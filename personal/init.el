;;; init --- summary

;;; Commentary:

;;; Code:

(setq prelude-guru nil)
(setq echo-keystrokes 0.01)

(smartparens-global-strict-mode)

(global-set-key "\M-9" 'sp-backward-sexp)
(global-set-key "\M-0" 'sp-forward-sexp)

(desktop-save-mode 1)

(provide 'init)
;;; init.el ends here
