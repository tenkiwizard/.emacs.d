; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(put 'downcase-region 'disabled nil)
