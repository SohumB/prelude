(prelude-require-packages '(js2-mode))

(require 'prelude-programming)
(require 'js2-mode)

;; (eval-after-load 'js2-mode
;;   '(progn
;;      (require 'js2-imenu-extras)
;;      (js2-imenu-extras-setup)))

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.jsx?$" . js2-mode))

(defun js2-mode-keybindings ()
  (local-set-key (kbd "M-n") 'next-error)
  (local-set-key (kbd "M-p") 'previous-error))

(add-hook 'js2-mode-hook
          (lambda ()
            (js2-mode-keybindings)
            (sp-hybrid-mode)
            ;; Scan the file for nested code blocks
            ;;(imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)))
