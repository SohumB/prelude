(flycheck-define-checker proselint
  "A linter for prose."
  :command ("proselint" source-inplace)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": "
        (id (one-or-more (not (any " "))))
        (message) line-end))
  :modes (text-mode markdown-mode gfm-mode adoc-mode))

(add-to-list 'flycheck-checkers 'proselint)
(add-to-list 'flycheck-disabled-checkers 'proselint)
