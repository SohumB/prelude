(require 'org)

(prelude-require-package 'org-tree-slide)
(org-tree-slide-simple-profile)

(defun org-babel-tangle-block()
  (interactive)
  (let ((current-prefix-arg '(4)))
    (call-interactively 'org-babel-tangle)))

(defun org-babel-tangle-next-block()
  (org-babel-next-src-block)
  (org-babel-tangle-block)
  (outline-previous-heading))

(defun ded/org-show-next-heading-tidily ()
  "Show next entry, keeping other entries closed."
  (if (save-excursion (end-of-line) (outline-invisible-p))
      (progn (org-show-entry) (show-children))
    (outline-next-heading)
    (unless (and (bolp) (org-on-heading-p))
      (org-up-heading-safe)
      (hide-subtree)
      (error "Boundary reached"))
    (org-overview)
    (org-reveal t)
    (org-show-entry)
    (show-children)))

(defun ded/org-show-previous-heading-tidily ()
  "Show previous entry, keeping other entries closed."
  (let ((pos (point)))
    (outline-previous-heading)
    (unless (and (< (point) pos) (bolp) (org-on-heading-p))
      (goto-char pos)
      (hide-subtree)
      (error "Boundary reached"))
    (org-overview)
    (org-reveal t)
    (org-show-entry)
    (show-children)))

(define-key org-mode-map (kbd "C-c b") 'org-babel-tangle-block)
(setq org-speed-commands-user
      '(("jj" . ded/org-show-next-heading-tidily)
        ("l" . ded/org-show-previous-heading-tidily)
        ("b" . org-babel-tangle-next-block)))
