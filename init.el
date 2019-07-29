;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


;; all-the-icons-dired
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)



;; add more personal func
;; new init-func.el 

(require 'better-defaults)
(require 'init-packages)
(require 'my-defaults)
;; (require 'org)


;; (setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))


;; (load-file custom-file)
















