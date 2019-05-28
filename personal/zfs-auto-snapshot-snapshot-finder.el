(prelude-require-package 'snapshot-timemachine)
(require 'snapshot-timemachine)

(defun parse-time (filename)
  (when (string-match "zfs-auto-snap_\\(frequent\\|hourly\\|daily\\|weekly\\|monthly\\|yearly\\)-\\([1-2][0-9][0-9][0-9]\\)-\\([0-9][0-9]\\)-\\([0-9][0-9]\\)-\\([0-9][0-9]\\)\\([0-9][0-9]\\)" filename)
    (let* ((year (string-to-number (match-string 2 filename)))
           (month (string-to-number (match-string 3 filename)))
           (day (string-to-number (match-string 4 filename)))
           (hour (string-to-number (match-string 5 filename)))
           (minute (string-to-number (match-string 6 filename))))
      (encode-time 0 minute hour day month year "UTC0"))))


(defun snapshot-timemachine-zfs-auto-snapshot-snapshot-finder (file)
  (let* ((file (file-truename file))
         (zfs-dir
          (snapshot-timemachine-find-dir ".zfs" (directory-file-name file)))
         (snapshot-dir (format "%s/snapshot/" zfs-dir)))
    (if (null zfs-dir)
        (error "Could not find a .zfs directory")
      (let* ((common-prefix (file-name-directory zfs-dir))
             (rel-path (string-remove-prefix common-prefix file)))
        (cl-loop for sdir in (directory-files snapshot-dir t)
                 for filename = (file-name-nondirectory sdir)
                 for time = (parse-time filename)
                 for abs-path = (format "%s/%s" sdir rel-path)
                 when (file-exists-p abs-path)
                 collect (make-snapshot
                          :id (round (float-time time))
                          :name filename
                          :file abs-path
                          :date time))))))

(setq snapshot-timemachine-snapshot-finder #'snapshot-timemachine-zfs-auto-snapshot-snapshot-finder)
