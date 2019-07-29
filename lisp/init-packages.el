(require 'cl)
(require 'package)

;; 使用Melpa作为插件源
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; Add Packages
(defvar my/packages '(
                      markdown-mode

                      company     ;; auto completion
                      hungry-delete
                      ;; smartparens
                      counsel
                      swiper
                      ;;doom-themes
                      ;;monokai-theme
                      ;; solarized-theme
                      zenburn-theme
                      flycheck    ;; syntax check
                      which-key   ;;展示可用的按键组合

                      neotree

                      all-the-icons
                      all-the-icons-dired
                      
                      ) "Default packages")



(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))



(global-hungry-delete-mode)


;; ivy, counsel, swiper
;; https://github.com/abo-abo/swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; Ivy-based interface to standard commands
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)


(global-company-mode t)


;;(load-theme 'monokai t)
(load-theme 'zenburn t)


(which-key-mode)



;; NeoTree
(global-set-key [f4] 'neotree-toggle)
(setq neo-window-fixed-size nil) ;; 不要固定宽度
;; NeoTree theme
(setq inhibit-compacting-font-caches t)  ;;防止卡
(setq neo-theme  'icons)


(provide 'init-packages)

