(require 'ruby-mode)

(setq ruby-insert-encoding-magic-comment nil)
(add-hook 'ruby-mode-hook '(lambda () (setq tab-width 2)))
