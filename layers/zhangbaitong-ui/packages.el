;;; packages.el --- zhangbaitong-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: zhangtao <zhangtao@zhangtaodeMacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(defconst zhangbaitong-ui-packages
  '(
    tabbar
    ;;sr-speedbar
    ))

(defun zhangbaitong-ui/init-tabbar()
  (use-package tabbar
    :bind (("s-<right>" . tabbar-forward-tab)
           ("s-<left>" . tabbar-backward-tab)
           ("s-<down>" . tabbar-forward-group)
           ("s-<up>" . tabbar-backward-group))
    :defer t
    ))

(defun zhangbaitong-ui/post-init-tabbar()
  (setq tabbar-use-images nil))

;; (defun zhangbaitong-ui/init-sr-speedbar()
;;   (use-package sr-speedbar
;;     :defer t))

;; (defun zhangbaitong-ui/post-init-sr-speedbar()
;;   (setq sr-speedbar-width 10)
;;   (setq sr-speedbar-width-x 10)
;;   (setq sr-speedbar-max-width 15)
;;   (setq sr-speedbar-default-width 10)
;;   (setq sr-speedbar-right-side nil)
;;   (setq speedbar-use-images nil))

;;; packages.el ends here
