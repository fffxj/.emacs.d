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
(require 'init-recentf)

;; Utils
(require 'init-fonts)
(require 'init-whitespace)

;; Programming
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-flycheck)

;; Color Theme
(require 'init-theme)



(provide 'init)

















