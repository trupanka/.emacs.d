;;; JAVA
(use-package cc-mode :defer t
  :hook (java-mode . cc-mode-java-setup)
  :preface
  (defun cc-mode-java-setup ()
    (setq c-block-comment-prefix "* ")))

;;; FLYCHECK
(use-package trupanka/tr-flycheck :load-path "site-lisp")

(use-package flycheck-java :after flycheck)

(provide 'trupanka/tr-java)
