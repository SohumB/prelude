(setq remote-file-name-inhibit-cache nil)
(setq vc-ignore-dir-regexp
      (format "%s\\|%s"
                    vc-ignore-dir-regexp
                    tramp-file-name-regexp))
(setq tramp-verbose 1)

(customize-set-variable
 'tramp-ssh-controlmaster-options
 (concat
   "-o ControlPath=/tmp/tramp-ssh-ControlPath "
   "-o ControlMaster=auto -o ControlPersist=yes"))

(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
;; (connection-local-set-profile-variables
;;  'gnu-utils
;;  '((tramp-remote-path . ("/usr/local/opt/coreutils/libexec/gnubin"
;;                          tramp-default-remote-path))))

;; (connection-local-set-profiles
;;    '(:machine "c455") 'gnu-utils)
