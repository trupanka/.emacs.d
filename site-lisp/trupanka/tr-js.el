;;; JS
(use-package js2-mode
  :mode (("\\.js\\'" . js2-mode)
	 ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter "node"
  :hook (js2-mode . js2-mode-setup)
  :preface
  (defun js2-mode-setup ()
    (setq browse-url-browser-function 'browse-url-chromium)))

;;; JS-COMINT
(use-package js-comint
  :after js2-mode
  :bind (:map js2-mode-map
	      ("C-c C-c" . js-send-last-sexp)
              ("C-c C-b" . js-send-buffer)
	      ("C-c C-r" . js-send-region)))

;;; SKEWER
(use-package skewer
  :after js2-mode
  :commands run-skewer
  :hook (js2-mode . skewer-mode)
  :hook (js2-jsx-mode . skewer-mode))

;;; TERN
(use-package tern
  :hook (js2-mode . tern-mode))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'c-mode-hook 'company-mode t)
  (add-hook 'c++-mode-hook 'company-mode t)
  (add-hook 'cmake-mode-hook 'company-mode t))

(use-package company
  :init
  (add-hook 'js2-mode-hook 'company-mode t))

(use-package trupanka/tr-company-js :load-path "site-lisp")

(provide 'trupanka/tr-js)
