;;; packages.el
(defconst zhangbaitong-better-defaults-packages
  '(
    company
    )
)


(defun zhangbaitong-better-defaults/post-init-company ()
  (progn
    (setq company-idle-delay 0.1)
    (setq company-minimum-prefix-length 1)))
;;; packages.el ends here
