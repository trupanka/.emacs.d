;;; GO
(use-package go-mode
  :hook (go-mode . go-mode-setup)
  :preface
  (defun go-mode-setup ()
    (setq tab-width 4)
    (setq indent-tabs-mode nil)))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'go-mode-hook 'company-mode t))

(use-package company-go
  :after company
  :hook (go-mode . company-go-setup)
  :preface
  (defun company-go-setup ()
    (add-to-list 'company-backends 'company-go)))

(provide 'trupanka/tr-go)
