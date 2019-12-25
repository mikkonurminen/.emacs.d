(let ((file-name-handler-alist nil)) (require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; ELPA WAS NOT WORKING, THIS IS A WORKAROUND
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Ensure that use-package is installed
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/configuration.org")

(setq custom-file "~/.emacs.d/custom.el")
)

;; (require' package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (package-initialize)

;; ;; Ensure that use-package is installed
;; (when (not (package-installed-p 'use-package))
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (org-babel-load-file "~/.emacs.d/configuration.org")

;; (setq custom-file "~/.emacs.d/custom.el")
