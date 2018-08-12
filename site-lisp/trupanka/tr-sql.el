;;; SQL
(use-package sql
  :mode ("\\.psql\\'" . sql-mode)
  :config
  (sql-highlight-postgres-keywords))

(use-package sql-upcase :load-path "site-lisp/trupanka/scripts"
  :after sql
  :hook (sql-mode . sql-upcase-mode))

(provide 'trupanka/tr-sql)
