;;; ELISP
(use-package company-elisp :disabled
  :after company
  :hook ((emacs-lisp-mode lisp-interaction-mode) . company-elisp-setup)
  :preface
  (defun company-elisp-setup ()
    (add-to-list 'company-backends 'company-elisp)))

(provide 'trupanka/tr-company-elisp)
