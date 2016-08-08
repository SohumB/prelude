(prelude-require-packages '(web-mode smartparens))

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

(defun my-web-mode-hook ()
  (setq web-mode-enable-auto-pairing nil))

(add-hook 'web-mode-hook 'my-web-mode-hook)

(defun sp-web-mode-is-code-context (id action context)
  (when (and (eq action 'insert)
             (not (or (get-text-property (point) 'part-side)
                      (get-text-property (point) 'block-side))))
    t))

(sp-local-pair 'web-mode "<" nil :when '(sp-web-mode-is-code-context))
