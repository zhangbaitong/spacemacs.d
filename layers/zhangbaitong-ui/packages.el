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
    ))

(defun zhangbaitong-ui/init-tabbar()
  (use-package tabbar
    :bind (("s-<right>" . tabbar-forward)
           ("s-<left>" . tabbar-backward)
           ("s-<down>" . tabbar-forward-group)
           ("s-<up>" . tabbar-backward-group))
    :defer t
    ))

(defun zhangbaitong-ui/post-init-tabbar()
  (setq tabbar-use-images nil))

;;; packages.el ends here
