;;; packages.el
(defconst zhangbaitong-better-defaults-packages
  '(
    company
    (dired-mode :location built-in)
    impatient-mode
    )
)


(defun zhangbaitong-better-defaults/post-init-company ()
  (progn
    (setq company-idle-delay 0.08)
    (setq company-minimum-prefix-length 1)))

(defun zhangbaitong-better-defaults/init-dired-mode()
  (use-package dired-mode
    :defer t
    :init
    (progn
      (add-hook 'dired-mode-hook (lambda ()
                                   (define-key dired-mode-map (kbd "DEL")  'zbt/dired-up-directory)))
      (add-hook 'dired-mode-hook (lambda ()
                                   (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)))
      )))

(defun zhangbaitong-better-defaults/init-impatient-mode()
  (use-package impatient-mode
    :defer t))

;;; packages.el ends here 
