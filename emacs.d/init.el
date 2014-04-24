;link ~/.emacs.d/
;; Load Path
(setq load-path (cons "~/.emacs.d" load-path))
;; Syntax Hilight 
(global-font-lock-mode t)
;; Paren Hilight
(show-paren-mode t)
;; Select region Hilight
(transient-mark-mode 1)
;; No tab for indent
(setq-default indent-tabs-mode nil)
;; Tool bar delete(menu-bar-mode 0)
;; Add exe perm if begin from !#
(add-hook 'after-save-hook
  'executable-make-buffer-file-executable-if-script-p)
;; Complement mode
;;(require 'dabbrev-highlight)
;; javascript-mode
(add-to-list 'auto-mode-alist (cons  "\\.\\(js\\|as\\|json\\|jsn\\)\\'" 'javascript-mode))
(autoload 'javascript-mode "javascript" nil t)
(setq js-indent-level 4)
;; Bracket complement
;(add-hook 'emacs-lisp-mode-hook '(lambda() (progn
;    (define-key emacs-lisp-mode-map "(" 'insert-parens)
;    (define-key emacs-lisp-mode-map "\"" 'insert-double-quotation)
;    (define-key emacs-lisp-mode-map "\C-c)" 'insert-parens-region)
;)))
;(add-hook 'c-mode-hook '(lambda() (progn
;   (define-key c-mode-map "{" 'insert-braces)
;   (define-key c-mode-map "(" 'insert-parens)
;   (define-key c-mode-map "\"" 'insert-double-quotation)
;   (define-key c-mode-map "[" 'insert-brackets)
;   (define-key c-mode-map "\C-c}" 'insert-braces-region)
;   (define-key c-mode-map "\C-c)" 'insert-parens-region)
;   (define-key c-mode-map "\C-c]" 'insert-brackets-region)
;   (define-key c-mode-map "\C-c\"" 'insert-double-quotation-region)
;)))
;; Ruby debuuger
(autoload 'rubydb "rubydb3x" "run rubydb on program file in buffer *gud-file*. the directory containing file becomes the initial working directory and source-file directory for your debugger." t)
;; TAB/EOL Space Hilight
(defface my-face-b-1 '((t (:background "gray80"))) nil)
(defface my-face-u-1 '((t (:foreground "SpringGreen" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-b-1 append)
     ("[ \t]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
