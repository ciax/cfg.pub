;link ~/.emacs.d/init.el
;; Load Path (C-h v load-path for confirm)
(add-to-list 'load-path "~/cfg.pub/etc")
;; Syntax Hilight 
(global-font-lock-mode t)
;; Paren Hilight
(show-paren-mode t)
;; Select region Hilight
(transient-mark-mode 1)
;; No tab for indent
(setq-default tab-width 2 indent-tabs-mode nil)
;; Tool bar delete(menu-bar-mode 0)
;; Add exe perm if begin from !#
(add-hook 'after-save-hook
  'executable-make-buffer-file-executable-if-script-p)
;; Includes
;;(require 'local_javascript)
;;
;; For Javascript (http://aimstogeek.hatenablog.com/entry/2016/10/25/214101)
(add-hook 'js-mode-hook
  (lambda ()
    (make-local-variable 'js-indent-level)
      (setq js-indent-level 2)))
