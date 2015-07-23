(defun find-franq (model)
  (interactive "sModel name: ")
  (find-dired "~/versioned/franq"
              (format "-not -path './dashboard/tmp/*' -not -path './terminal/tmp/*' -not -path '*/node_modules/*' -not -path '*/bower_components/*' -type f -iregex '.*%ss?\\(\\-test|controller\\)?\\(\\(\\.[^/]*\\)\\|\\(/.*\\.[^/]*\\)\\)'" model)))

(global-set-key (kbd "C-x f") 'find-franq)
