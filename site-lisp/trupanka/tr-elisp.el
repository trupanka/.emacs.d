;;; ELISP

;;; PAREDIT
(use-package paredit
  :hook ((emacs-lisp-mode lisp-interaction-mode) . paredit-mode))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :hook (emacs-lisp-mode . company-mode))

(use-package trupanka/tr-company-elisp :load-path "site-lisp")

(provide 'trupanka/tr-elisp)
