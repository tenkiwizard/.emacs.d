;;; ���߹Ԥ���Ω������
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

;; ��������С���ɽ��
(scroll-bar-mode t)

;; ��˥塼�С��˥ե�����Υե�ѥ���ɽ��
(setq frame-title-format (format "%%f"))

;; �������ȥ����򥨥������ꥢ���᤯ɽ������
(setq echo-keystrokes 0.1)

;; ʬ��Хåե���ս�˰�ư
(define-key global-map (kbd "C-x p") 'previous-multiframe-window)

;; �Խ��� buffer ���ɤ߹���
(global-auto-revert-mode 1)

;; save-buffer ����buffer �����˶��Ԥ���ˤ���褦��
(setq require-final-newline t)

;; ����������ΰ�ư�̤�1��
(setq scroll-step 1)

;; ��������ΰ��֤���ʸ���ܤ���ɽ������
(column-number-mode t)

;; ��������ΰ��֤������ܤ���ɽ������
(line-number-mode t)

;; �Хåե����˹��ֹ��ɽ��
(global-linum-mode t)
;; ���ֹ�Υե����ޥå�
(set-face-attribute 'linum nil :foreground "gray" :height 0.8)
(setq linum-format "%4d ")

;; �����ȥ����Ȥη����ѹ�
(setq comment-style 'multi-line)

;; ���ԥ����ɤ�ɽ��
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; �б������̤�ϥ��饤��
(setq show-paren-delay 0)
(show-paren-mode t)

;; �̾�Υ�����ɥ��ǹԤ��ޤ��֤��ʤ�
(setq-default truncate-lines t)

;; ������ɥ��򺸱���ʬ�䤷���Ȥ��˹Ԥ��ޤ��֤��ʤ�
(setq-default truncate-partial-width-windows t)
