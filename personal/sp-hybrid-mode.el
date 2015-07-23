;;; sp-hybrid-mode --- Summary

;;; Commentary:

;;; Code:

(require 'smartparens)

(defvar sp-hybrid-mode-map (make-keymap)
  "Remap smartparens functions to hybrid functions.")

(define-minor-mode sp-hybrid-mode
  "A minor mode that remaps smartparens functions to hybrid functions" nil " sp-hybrid" 'sp-hybrid-mode-map)

(define-key sp-hybrid-mode-map [remap sp-kill-sexp] 'sp-kill-hybrid-sexp)
(define-key sp-hybrid-mode-map [remap sp-transpose-sexp] 'sp-transpose-hybrid-sexp)
(define-key sp-hybrid-mode-map [remap sp-forward-slurp-sexp] 'sp-slurp-hybrid-sexp)
(define-key sp-hybrid-mode-map [remap sp-forward-barf-sexp] 'sp-dedent-adjust-sexp)

(provide 'sp-hybrid-mode)
;;; sp-hybrid-mode.el ends here
