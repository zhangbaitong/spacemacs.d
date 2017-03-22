;;; packages.el --- zhangbaitong-php layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: zhangtao <zhangtao@zhangtaodeMacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst zhangbaitong-php-packages
  '(
    php-mode
    ac-php
    flymake-php
    ))

(defun zhangbaitong-php/init-php-mode ()
  (use-package php-mode
    :defer t
    :mode ("\\.php\\'" . php-mode)))

(defun zhangbaitong-php/post-init-php-mode()
  (add-hook 'php-mode-hook
            '(lambda ()
               (auto-complete-mode t)
               (setq ac-sources '(ac-source-php))
               (yas-global-mode 1)
               (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
               (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
               )))


(defun zhangbaitong-php/init-ac-php ()
  (use-package ac-php
    :defer t))

(defun zhangbaitong-php/init-flymake-php ()
  (use-package flymake-php
    :defer t))

(defun zhangbaitong-php/post-init-flymake-php()
  (add-hook 'php-mode-hook 'flymake-php-load))

;;; packages.el ends here
