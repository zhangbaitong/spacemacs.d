;;; packages.el --- %LAYER_NAME% layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: %USER_FULL_NAME% <%USER_MAIL_ADDRESS%>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;定义package依赖
(defconst zhangbaitong-org-packages
  '(
    (org :location built-in)
    )
)

;;定义org-mode
(defun zhangbaitong-org/post-init-org()
  ;;加载org-mode后进行配置
  (with-eval-after-load 'org
    ;;设置agenda目录
    (setq org-agenda-files '("~/Documents/org"))
    (setq org-agenda-file-gtd "~/Documents/org/todo.org")
    (setq org-agenda-file-note "~/Documents/org/note.org")
    ;;打开注释内语法高亮
    (setq org-src-fontify-natively t)
    ;;设置模板并制定todo文件
    (setq org-capture-templates
          ;;定制TODO模板
          '(("t" "Todo" entry (file+headline org-agenda-file-gtd "todo-list")
             "* TODO [#B] %?\n  %i\n"
             :empty-lines 1)
            ("n" "Note" entry (file+headline org-agenda-file-note "note-list")
             "* %?\n  %i\n %U"
             :empty-lines 1))));; end with
    ;; (setq org-todo-keywords
    ;;  '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
    ;;   ))
  );; end defun zhangbaitong-org/post-init-org

;;; packages.el ends here
