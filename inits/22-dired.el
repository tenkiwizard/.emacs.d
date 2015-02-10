(add-hook 'dired-load-hook
          '(lambda ()
             ;; �ǥ��쥯�ȥ��Ƶ�Ū�˥��ԡ���ǽ�ˤ���
             (setq dired-recursive-copies 'always)
             ;; ls�Υ��ץ���� ��l��(��ʸ���Υ���)��ɬ��
             (setq dired-listing-switches "-FlhtA")
             ;; find-dired/find-grep-dired�ǡ����˹�ä��ե������ꥹ�Ȥ������
             (setq find-ls-option '("-print0 | xargs -0 ls -Flhatd"))
             ;; ̵�����ޥ��dired-find-alternate-file��ͭ���ˤ���
             (put 'dired-find-alternate-file 'disabled nil)))

;; �ե����롦�ǥ��쥯�ȥ�̾�Υꥹ�Ȥ��Խ����뤳�Ȥǡ��ޤȤ�ƥ�͡����ǽ�ˤ���
(require 'wdired)
;; wdired�⡼�ɤ����륭��(������Ǥϡ�r��)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
;; �����Хåե����餺�˥ǥ��쥯�ȥ�򳫤�(�ǥե���Ȥϡ�a��)
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
;; ��a�פ򲡤����Ȥ��˿����Хåե����äƳ����褦�ˤ���
(define-key dired-mode-map "a" 'dired-advertised-find-file)



;; (define-key dired-mode-map "\C-m" 'dired-my-advertised-find-file)
;; (define-key dired-mode-map "^" 'dired-my-up-directory)
