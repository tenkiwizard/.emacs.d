; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (yasnippet yaml-mode wgrep-ag web-mode use-package textile-mode smex smartparens projectile prodigy powerline popwin php-mode pallet open-junk-file nyan-mode multiple-cursors migemo markdown-mode magit init-loader idle-highlight-mode htmlize highlight-symbol hc-zenburn-theme haml-mode flymake-haml flymake-coffee flycheck-cask expand-region exec-path-from-shell drag-stuff ddskk ctags-update ctags coffee-mode auto-complete auto-compile)))
 '(save-place t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(vc-handled-backends nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "nil" :slant normal :weight normal :height 110 :width normal)))))
