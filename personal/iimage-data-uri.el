;; (require 'iimage)

;; (defvar iimage-mode-data-uri-regex
;;   "data:;base64,\\([A-Za-z0-9+/]+==\\)")

;; (defun decode-base64-data-uri (uri)
;;   "Takes a base64 data uri and returns the decoded data. Currently does not support mime types."
;;   (when (string-match iimage-mode-data-uri-regex uri)
;;     (base64-decode-string (match-string 1 uri))))

;; (setf iimage-mode-image-regex-alist (cons `(,iimage-mode-data-uri-regex . 1) iimage-mode-image-regex-alist))

;; (defun iimage-extract-image (pair file-or-data image-path)
;;   (let* ((data-p (string-match "data:" (car pair)))
;;          (decoded-or-located (if data-p
;;                                  (decode-base64-data-uri file-or-data)
;;                                  (locate-file file-or-data image-path))))
;;     (when decoded-or-located
;;       (if data-p
;;           (create-image decoded-or-located nil t)
;;           (create-image decoded-or-located)))))

;; (defun iimage-mode-buffer (arg)
;;   "Display images if ARG is non-nil, undisplay them otherwise."
;;   (let ((image-path (cons default-directory iimage-mode-image-search-path))
;;   image)
;;     (with-silent-modifications
;;       (save-excursion
;;         (goto-char (point-min))
;;         (dolist (pair iimage-mode-image-regex-alist)
;;           (while (re-search-forward (car pair) nil t)
;;             (when (setq image (iimage-extract-image pair
;;                                                     (match-string (cdr pair))
;;                                                     image-path))
;;               ;; FIXME: we don't mark our images, so we can't reliably
;;               ;; remove them either (we may leave some of ours, and we
;;               ;; may remove other packages's display properties).
;;               (if arg
;;                   (add-text-properties (match-beginning 0) (match-end 0)
;;                                        `(display ,image
;;                                          modification-hooks
;;                                          (iimage-modification-hook)))
;;                 (remove-text-properties (match-beginning 0) (match-end 0)
;;                                         '(display modification-hooks))))))))))
