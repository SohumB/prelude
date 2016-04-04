(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(c-default-style
   (quote
    ((c-mode . "java")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(cider-lein-command "~/.tilde/bin/lein")
 '(clojure-defun-indents (quote (root render)))
 '(company-dabbrev-code-everywhere t)
 '(custom-safe-themes
   (quote
    ("119d3875a0e29c0c3af025a157493c950753c02519986365806276e370bd0033" default)))
 '(elm-format-on-save t)
 '(ensime-graphical-tooltips nil)
 '(ensime-tooltip-hints nil)
 '(flycheck-haskell-ghc-executable "ghc")
 '(grep-command "grep -nH -e ")
 '(grep-find-command (quote ("find . -type f -exec grep -nH -e  {} +" . 34)))
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "node_modules" "dist" "bower_components" "tmp" "coverage" "build" "public")))
 '(grep-find-ignored-files
   (quote
    (".#*" "*.beam" "*.vee" "*.jam" "*.cmti" "*.cmt" "*.annot" "*.cmi" "*.cmxa" "*.cma" "*.cmx" "*.cmo" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "*.map")))
 '(grep-find-template "find . <X> -type f <F> -exec grep <C> -nH -e <R> {} +")
 '(grep-highlight-matches (quote auto))
 '(grep-scroll-output t)
 '(grep-template "grep <X> <C> -nH -e <R> <F>")
 '(grep-use-null-device nil)
 '(haskell-process-path-cabal "~/.cabal/bin/cabal")
 '(haskell-process-path-ghci "ghci")
 '(haskell-process-type (quote cabal-repl))
 '(haskell-process-use-presentation-mode t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(js2-global-externs (quote ("Em" "Ember")))
 '(js2-highlight-level 3)
 '(js2-indent-switch-body t)
 '(js2-mode-indent-inhibit-undo nil)
 '(magit-diff-refine-hunk nil)
 '(magit-git-executable "/usr/bin/git")
 '(magit-highlight-indentation nil)
 '(magit-highlight-trailing-whitespace nil)
 '(magit-highlight-whitespace nil)
 '(magit-revert-buffers t)
 '(magit-use-overlays t)
 '(mode-require-final-newline nil)
 '(paradox-automatically-star t)
 '(safe-local-variable-values
   (quote
    ((eval font-lock-add-keywords nil
           (\`
            (((\,
               (concat "("
                       (regexp-opt
                        (quote
                         ("sp-do-move-op" "sp-do-move-cl" "sp-do-put-op" "sp-do-put-cl" "sp-do-del-op" "sp-do-del-cl"))
                        t)
                       "\\_>"))
              1
              (quote font-lock-variable-name-face)))))
     (SQL-product . postgres))))
 '(sp-hybrid-kill-excessive-whitespace t)
 '(sql-indent-first-column-regexp
   "^\\s-*\\(--\\|create\\|d\\(?:elete\\|rop\\)\\|from\\|group\\|having\\|in\\(?:sert\\|t\\(?:ersect\\|o\\)\\)\\|order\\|se\\(?:\\(?:lec\\)?t\\)\\|truncate\\|u\\(?:nion\\|pdate\\)\\|where\\|begin\\|commit\\|rollback\\|alter\\)\\(\\b\\|\\s-\\)")
 '(sql-indent-offset 2)
 '(sql-user "sohum")
 '(web-mode-attr-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-enable-auto-pairing t)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-line-column 100))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#ecf0f1" :foreground "#2c3e50" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 105 :width normal :foundry "unknown" :family "Input Mono"))))
 '(highlight ((t (:background "PaleTurquoise1"))))
 '(magit-item-highlight ((t (:inherit secondary-selection :background "#dfe4ea"))))
 '(magit-section-title ((t (:inherit header-line :foreground "gainsboro" :weight bold))))
 '(markup-emphasis-face ((t (:inherit markup-gen-face :slant italic))))
 '(markup-gen-face ((t (:inherit variable-pitch :foreground "medium blue" :height 0.85))))
 '(sp-show-pair-match-face ((t (:background "gainsboro" :weight bold))))
 '(variable-pitch ((t (:height 1.1 :family "Sans Serif")))))
