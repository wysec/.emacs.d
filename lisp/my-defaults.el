;;关闭开始页面
(setq inhibit-splash-screen t)


;;设置编码，解决Windows10中文卡顿
(set-language-environment "UTF-8")


;; setting Windows font
;; Setting English Font 
(set-face-attribute
 'default nil :font "Source Code Pro 10")
;; Chinese Font 设置中文字体
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Source Code Pro" :size 10)))

;; 启用CUA
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; 光标竖线
(setq-default cursor-type 'bar)


(provide 'my-defaults)