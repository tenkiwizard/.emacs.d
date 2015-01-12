;;; 現在行を目立たせる
(defface my-hl-line-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "#232323"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode)

;; スクロールバーの表示
(scroll-bar-mode t)

;; メニューバーにファイルのフルパスを表示
(setq frame-title-format (format "%%f"))

;; キーストロークをエコーエリアに早く表示する
(setq echo-keystrokes 0.1)

;; 分割バッファを逆順に移動
(define-key global-map (kbd "C-x p") 'previous-multiframe-window)

;; 編集時 buffer 再読み込み
(global-auto-revert-mode 1)

;; save-buffer 時，buffer 末尾に空行が常にあるように
(setq require-final-newline t)

;; スクロール時の移動量を1に
(setq scroll-step 1)

;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;; バッファ左に行番号を表示
(global-linum-mode t)
;; 行番号のフォーマット
(set-face-attribute 'linum nil :foreground "gray" :height 0.8)
(setq linum-format "%4d ")

;; コメントアウトの形式変更
(setq comment-style 'multi-line)

;; 改行コードを表示
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; 対応する括弧をハイライト
(setq show-paren-delay 0)
(show-paren-mode t)

;; 通常のウィンドウで行を折り返さない
(setq-default truncate-lines t)

;; ウィンドウを左右に分割したときに行を折り返さない
(setq-default truncate-partial-width-windows t)
