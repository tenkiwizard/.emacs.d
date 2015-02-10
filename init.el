; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; load-path へのサブディレクトリの一括登録関数
;; (defun add-to-load-path (&rest paths)
;;   (let (path)
;;     (dolist (path paths paths)
;;       (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
;;         (add-to-list 'load-path default-directory)
;;         (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;             (normal-top-level-add-subdirs-to-load-path))))))

;; ~/,emacs.d 以下のディレクトリを明示的に load-path へ追加
;; (add-to-load-path "site-lisp") ; 追加パッケージ
;; (add-to-load-path "elpa")      ; package.el


;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (package-initialize)


;;;(require 'cl)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;; init-loaderの有効化とパスの指定
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(put 'upcase-region 'disabled nil)

