(require 'generic-x)

(define-generic-mode
  'bugs-mode                          ;; name of the mode
  '("//")                           ;; comments delimiter
  '("dnorm" "for" "model" "in" "max")      ;; some keywords
  '(("~" . 'font-lock-operator)
    ("<-" . 'font-lock-operator)     ;; some operators
    ("+" . 'font-lock-operator)
    ("-" . 'font-lock-builtin))     ;; a built-in
  '("\\.myext$")                    ;; files that trigger this mode
   nil                              ;; any other functions to call
  "My custom highlighting mode"     ;; doc string
)
