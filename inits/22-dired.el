(add-hook 'dired-load-hook
          '(lambda ()
             ;; ディレクトリを再帰的にコピー可能にする
             (setq dired-recursive-copies 'always)
             ;; lsのオプション 「l」(小文字のエル)は必須
             (setq dired-listing-switches "-FlhtA")
             ;; find-dired/find-grep-diredで、条件に合ったファイルをリストする形式
             (setq find-ls-option '("-print0 | xargs -0 ls -Flhatd"))
             ;; 無効コマンドdired-find-alternate-fileを有効にする
             (put 'dired-find-alternate-file 'disabled nil)))

;; ファイル・ディレクトリ名のリストを編集することで、まとめてリネーム可能にする
(require 'wdired)
;; wdiredモードに入るキー(下の例では「r」)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
;; 新規バッファを作らずにディレクトリを開く(デフォルトは「a」)
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
;; 「a」を押したときに新規バッファを作って開くようにする
(define-key dired-mode-map "a" 'dired-advertised-find-file)



;; (define-key dired-mode-map "\C-m" 'dired-my-advertised-find-file)
;; (define-key dired-mode-map "^" 'dired-my-up-directory)
