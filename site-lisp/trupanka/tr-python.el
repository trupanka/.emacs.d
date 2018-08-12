;;; PYTHON
(use-package python :defer t
  :init
  (setq python-shell-interpreter "ipython")
  (setq python-shell-interpreter-args "--simple-prompt -i"))

;;; ANACONDA
(use-package anaconda-mode
  :hook (python-mode . anaconda-mode)
  :hook (anaconda-mode . anaconda-mode-setup)
  :bind (:map anaconda-mode-map
	      ("C-M-i" . completion-at-point))
  :preface
  (defun anaconda-mode-setup ()
    (turn-off-anaconda-eldoc-mode)))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'anaconda-mode-hook 'company-mode t)
  :bind (:map company-mode-map
	      ("C-M-_" . complete-symbol)))

(use-package company-anaconda
  :after company
  :init
  (add-hook 'anaconda-mode-hook 'company-anaconda-setup t)
  :preface
  (defun company-anaconda-setup ()
    (add-to-list 'company-backends 'company-anaconda)))

;;; ISEND
(use-package trupanka/tr-isend :load-path "site-lisp")

;;; REALGUD
(use-package trupanka/tr-realgud :load-path "site-lisp")

(provide 'trupanka/tr-python)
