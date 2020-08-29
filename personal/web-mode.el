(prelude-require-packages '(web-mode smartparens))

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

;;(add-hook 'web-mode-hook 'smartparens-html)

;; (defun sp-web-mode-is-code-context (id action context)
;;   (when (and (eq action 'insert)
;;              (not (or (get-text-property (point) 'part-side)
;;                       (get-text-property (point) 'block-side))))
;;     t))

;; (sp-local-pair 'web-mode "<" nil :when '(sp-web-mode-is-code-context))
