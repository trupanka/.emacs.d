;;; CMAKE
(use-package cmake-mode
  :after company
  :hook (cmake-mode . cmake-mode-setup)
  :preface
  (defun cmake-mode-setup ()
    (add-to-list 'company-backends 'company-cmake)))

;;; COMPANY-IRONY
(use-package company-irony
  :after (company irony)
  :init
  (add-hook 'irony-mode-hook 'company-irony-setup t)
  :preface
  (defun company-irony-setup ()
    (add-to-list 'company-backends 'company-irony)))

;;; COMPANY-RTAGS
(use-package company-rtags
  :after (company rtags)
  :init
  (add-hook 'c-mode-hook 'company-rtags-setup t)
  (add-hook 'c++-mode-hook 'company-rtags-setup t)
  :preface
  (defun company-rtags-setup ()
    (add-to-list 'company-backends 'company-rtags)))

;;; COMPANY-C-HEADERS
(use-package company-c-headers
  :after company
  :init
  (add-hook 'c-mode-hook 'company-c-headers-setup t)
  (add-hook 'c++-mode-hook 'company-c-headers-setup t)
  :preface
  (defun company-c-headers-setup ()
    (add-to-list 'company-backends 'company-c-headers)))

(provide 'trupanka/tr-company-c++)
