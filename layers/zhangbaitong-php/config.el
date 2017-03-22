;; variables
(condition-case nil
    (spacemacs|defvar-company-backends  php-mode)
  (error
   ;; try this one:
   ))

(spacemacs|define-jump-handlers php-mode ac-php-find-symbol-at-point)
