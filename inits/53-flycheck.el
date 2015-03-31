(add-hook 'after-init-hook #'global-flycheck-mode)

;; keybinds
(smartrep-define-key
    global-map "M-g" '(("M-n" . 'flycheck-next-error)
                       ("M-p" . 'flycheck-previous-error)))

;; flycheck-pos-tip
;; (eval-after-load 'flycheck
;;   '(custom-set-variables
;;    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
