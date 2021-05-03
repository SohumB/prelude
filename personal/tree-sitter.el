(prelude-require-packages '(tree-sitter tree-sitter-langs))
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
(global-tree-sitter-mode)
