(require 'highlight-symbol)

;; 使いたい色を設定、repeatしてくれる
(setq highlight-symbol-colors '("DarkOrange" "DodgerBlue1" "DeepPink1"))

;; keybinds
(global-unset-key (kbd "M-q"))
(smartrep-define-key
    global-map "M-q" '(("M-q" . 'highlight-symbol-next)
                       ("h"   . 'highlight-symbol-at-point)
                       ("n"   . 'highlight-symbol-next)
                       ("p"   . 'highlight-symbol-prev)
                       ("o"   . 'highlight-symbol-occur)
                       ("d"   . 'highlight-symbol-remove-all)
                       ("r"   . 'highlight-symbol-query-replace)))
