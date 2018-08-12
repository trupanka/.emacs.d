;;; COQ
(use-package coq
  :commands coq-mode)

(use-package holes
  :after coq
  :hook (coq-mode . holes-mode))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'coq-mode 'company-mode t))

(use-package company-coq
  :after company
  :hook (coq-mode . company-coq-mode)
  :preface
  (defun company-coq-setup ()
    (add-to-list 'company-backends 'company-coq)))

(provide 'trupanka/tr-coq)
