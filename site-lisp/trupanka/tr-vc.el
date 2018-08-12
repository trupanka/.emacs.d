;;; VC
(use-package vc
  :config
  (setq vc-diff-switches '("-b" "-B" "-u"))
  (setq vc-git-diff-switches nil))

;;; MAGIT
(use-package magit
  :commands magit-status
  :config
  (setq magit-ediff-dwim-show-on-hunks t)
  (setq magit-commit-arguments '("--gpg-sign=BD5D575A9D34EF81"))
  :bind (:map prog-mode-map
	      ("M-u M-s" . magit-status)
	      ("M-u M-f" . magit-file-popup))
  :bind (:map dired-mode-map
	      ("M-u M-s" . magit-status)
	      ("M-u M-f" . magit-file-popup)))

;;; EDIFF
(use-package ediff
  :config
  (setq ediff-split-window-function 'split-window-sensibly)
  (setq ediff-window-setup-function 'ediff-setup-windows-plain))

;;; PINENTRY
(use-package trupanka/tr-pinentry :load-path "site-lisp")

(provide 'trupanka/tr-vc)
