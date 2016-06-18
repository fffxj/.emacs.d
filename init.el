(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-utils)
(require 'init-elpa)

(require 'init-custom)


;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

;(require 'init-ido)
;(require 'init-dired)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-fonts)

(require 'init-theme)



(provide 'init)

















