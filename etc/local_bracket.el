;; Bracket complement
(add-hook 'emacs-lisp-mode-hook '(lambda() (progn
    (define-key emacs-lisp-mode-map "(" 'insert-parens)
    (define-key emacs-lisp-mode-map "\"" 'insert-double-quotation)
    (define-key emacs-lisp-mode-map "\C-c)" 'insert-parens-region)
)))
(add-hook 'c-mode-hook '(lambda() (progn
   (define-key c-mode-map "{" 'insert-braces)
   (define-key c-mode-map "(" 'insert-parens)
   (define-key c-mode-map "\"" 'insert-double-quotation)
   (define-key c-mode-map "[" 'insert-brackets)
   (define-key c-mode-map "\C-c}" 'insert-braces-region)
   (define-key c-mode-map "\C-c)" 'insert-parens-region)
   (define-key c-mode-map "\C-c]" 'insert-brackets-region)
   (define-key c-mode-map "\C-c\"" 'insert-double-quotation-region)
)))
