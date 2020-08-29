(prelude-require-package 'tagedit)
(eval-after-load 'sgml-mode '(progn
                              (require 'tagedit)
                              (tagedit-add-experimental-features)
                              ))
