;;; MAGIT
(use-package magit
  :commands magit-status
  :config
  (setq magit-ediff-dwim-show-on-hunks t)
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

(provide 'trupanka/tr-git)
