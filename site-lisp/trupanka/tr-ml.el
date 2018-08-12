;;; OCAML
(use-package caml :defer t)

;;; TUAREG
(use-package tuareg
  :mode (("\\.ml[ily]?$" . tuareg-mode)
	 ("\\.topml$" . tuareg-mode))
  :after (aggressive-indent caml)
  :hook (tuareg-mode . aggressive-indent-mode))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'merlin-mode-hook 'company-mode t))

;;; MERLIN
(use-package merlin
  :after tuareg
  :config
  (setq merlin-command "/usr/bin/ocamlmerlin")
  :hook (tuareg-mode . merlin-mode))

(provide 'trupanka/tr-ml)
