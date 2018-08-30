;;; TERN
(use-package company-tern
  :after company
  :hook ((js2-mode skewer-repl-mode) . company-tern-setup)
  :preface
  (defun company-tern-setup ()
    (add-to-list 'company-backends 'company-tern)))

(provide 'trupanka/tr-company-js)
