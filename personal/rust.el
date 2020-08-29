(prelude-require-packages '(rust-mode cargo racer flycheck-rust lsp-mode lsp-ui))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(require 'lsp-mode)
; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
(setq lsp-rust-server 'rust-analyzer)
(add-hook 'rust-mode-hook #'lsp)

(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
