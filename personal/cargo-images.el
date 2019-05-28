(defun refresh-iimages (begin end length)
  "Only way I've found to refresh iimages (without also recentering)"
  (interactive)
  (let ((inhibit-modification-hooks t))
    (clear-image-cache nil)
    (iimage-mode nil)
    (iimage-mode t)))


(add-hook 'iimage-mode-hook
          (lambda () (add-hook 'after-change-functions 'refresh-iimages nil 'local)))
(add-hook 'cargo-process-mode-hook 'iimage-mode)
