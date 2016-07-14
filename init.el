(let ((minver "23.3"))
  (when (version<= emacs-version "23.1")
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Package Manager
(require 'init-utils)
(require 'init-elpa)

;; Customization
(require 'init-custom)

;; Interface Enhancement
(require 'init-ido)
(require 'init-dired)
(require 'init-smex)
(require 'init-ibuffer)

;; Utils
(require 'init-recentf)
(require 'init-uniquify)

;; Editor
(require 'init-flyspell)
(require 'init-fonts)
(require 'init-whitespace)

;; Programming
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-hippie-expand)
(require 'init-flycheck)

;; Version Control
(require 'init-git)
(require 'init-github)

;; Color Theme
(require 'init-theme)


(provide 'init)
