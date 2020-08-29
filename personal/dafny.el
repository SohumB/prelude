(prelude-require-package 'boogie-friends)

(add-hook 'dafny-mode-hook 'sp-hybrid-mode)
(sp-local-pair '(dafny-mode) "<" ">" :actions nil)
