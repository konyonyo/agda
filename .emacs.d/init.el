(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)

(add-to-list 'load-path "~/.emacs.d/site-lisp")
(require 'eaw)
(eaw-fullwidth)

; (create-fontset-from-fontset-spec standard-fontset-spec) ;to make --daemon work

(if (window-system) (
progn (load "server") (server-start)
(set-fontset-font "fontset-standard"
         'ascii
          (font-spec :family "monospace" :size 18) nil 'prepend)  ;; ここでサイズを指定
(set-fontset-font "fontset-standard"
          'japanese-jisx0213.2004-1
          (font-spec :family "monospace") nil 'prepend)

(set-fontset-font "fontset-standard"
                  'unicode
                  (font-spec :family "monospace" :size 18)
                  nil
                  'append)

(setq default-frame-alist
      (append (list 
               '(font . "fontset-standard"))
              default-frame-alist))
))


(set-face-attribute 'default t :font "fontset-standard" )
(set-face-attribute 'default nil :font "fontset-standard" )
(set-frame-font "fontset-standard" nil t)

;;;  Screen Setting

;;(setq default-frame-alist
;;      (cons '(line-space . "0") default-frame-alist))


(load-file (let ((coding-system-for-read 'utf-8))
                    (shell-command-to-string "agda-mode locate")))

;; if you want viper
;; (add-hook 'agda2-mode-hook
;;           '(lambda ()
;;               (setq viper-mode t)
;;               (require 'viper)
;;               (viper-mode)
;;           )
;; )
