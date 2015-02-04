;; 起動画面削除
(setq inhibit-startup-message t)

;; カーソル点滅表示
(blink-cursor-mode t)

;; Menuを隠す
(custom-set-variables
 '(display-time-mode nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces)

;; キー入力中にマウスポインタを右上隅へ移動
;;    banish  キー操作によって右上隅に移動(デフォルト)
;;    exile   カーソルが近付いたときだけ右上隅に移動、その後復帰
;;    jump    カーソルが近付くとランダムに移動
(mouse-avoidance-mode 'banish)
