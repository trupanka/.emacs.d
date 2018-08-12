;;; DIRED
(use-package dired
  :config
  (setq dired-listing-switches "-aBhl --group-directories-first")
  :bind (:map dired-mode-map
	      ("M-s M-c" . compile)
	      ("M-s c" . recompile)))

;;; GTAGS
(use-package trupanka/tr-gtags :load-path "site-lisp")

(use-package ggtags
  :hook (dired-mode-hook . ggtags-mode))

;;; DIRED-X
(use-package dired-x)

(provide 'trupanka/tr-dired)
