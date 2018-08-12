;;; COMPANY
(use-package company
  :init
  (setq company-idle-delay nil)
  (setq company-backends nil)
  (add-to-list 'company-backends 'company-files)
  (make-variable-buffer-local 'company-backends)
  :bind (:map company-active-map
              ("M-j" . company-select-next-or-abort)
              ("M-k" . company-select-previous-or-abort))
  :bind (:map company-search-map
              ("M-j" . company-select-next)
              ("M-k" . company-select-previous))
  :hook (company-mode . company-mode-setup)
  :preface
  (defun company-mode-setup ()
    (make-variable-buffer-local 'completion-at-point-functions)
    (add-to-list 'completion-at-point-functions 'company-complete)))

(provide 'trupanka/tr-company)
