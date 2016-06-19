;;================================================================================
;; 个人偏好
;;================================================================================

;; 关闭启动动画
(setq inhibit-startup-message 1)

;; 关闭出错时的提示声
;(setq visible-bell t)

;; 关闭自动备份
(setq make-backup-files nil)

;; 逗号后自动加空格
(global-set-key (kbd ",")
		#'(lambda()
		    (interactive)
		    (insert ", ")))


;;================================================================================
;;org-mode
;;================================================================================

;; 快速截图
(defun my-screenshot ()
  "Take a screenshot into a unique-named file in the current buffer file
directory and insert a link to this file."
  (interactive)
  (setq filename
        (concat (make-temp-name "./") ".png"))
  (setq fullfilename
                 (concat (file-name-directory (buffer-file-name)) "images/" filename))
  (if (file-accessible-directory-p (concat (file-name-directory
                                            (buffer-file-name)) "images/"))
      nil
    (make-directory "images/" t))
  (call-process-shell-command "screencapture" nil nil nil nil "-i" (concat
                                                            "\"" fullfilename "\"" ))
  (insert (concat "[[./images/" filename "]]"))
  (org-display-inline-images)
  )


(provide 'init-custom)
