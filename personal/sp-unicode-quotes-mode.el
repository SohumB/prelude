;;; sp-unicode-quotes-mode --- Summary

;;; Commentary:

;;; Code:

(require 'smartparens)

(defvar sp-unicode-quotes-mode-map (make-keymap)
  "Use the \" key for “”.")

(define-minor-mode sp-unicode-quotes-mode
  "A minor mode that remaps the quote key to sp-pair “”" nil " sp-quote" 'sp-unicode-quotes-mode-map
  (sp-pair "“" "”"))

(define-key sp-unicode-quotes-mode-map (kbd "\"") (kbd "“"))

(provide 'sp-unicode-quotes-mode)
;;; sp-unicode-quotes-mode.el ends here
