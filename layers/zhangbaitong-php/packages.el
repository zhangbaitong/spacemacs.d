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
    company
    company-php
    flycheck
    ))

(defun zhangbaitong-php/init-php-mode ()
  (use-package php-mode
    :defer t
    :mode ("\\.php\\'\\|\\.phtml\\'" . php-mode)))
 
(defun zhangbaitong-php/post-init-company ()
  (condition-case nil
      (spacemacs|add-company-hook php-mode )
    (error
     ;; try this one:
     (spacemacs|add-company-backends
      :modes php-mode
      :variables
      company-minimum-prefix-length 1000
      :backends  company-ac-php-backend
      )
     )))

(defun zhangbaitong-php/init-company-php()
  (use-package company-php
    :defer t))

(defun zhangbaitong-php/post-init-company-php()
  (push 'company-ac-php-backend company-backends-php-mode))


(defun zhangbaitong-php/post-init-flycheck ()
  (spacemacs/add-flycheck-hook 'php-mode))


;;; packages.el ends here
