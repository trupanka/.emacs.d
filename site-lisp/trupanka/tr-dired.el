;;; DIRED
(use-package dired
  :config
  (setq dired-listing-switches "-aBhl --group-directories-first")
  :bind (:map dired-mode-map
	      ("M-s M-c" . compile)
	      ("M-s c" . recompile)
	      ("C-c C-o" . dired-open-file))
  :preface
  (defun dired-open-file ()
    "In dired, open the file named on this line."
    (interactive)
    (let* ((file (dired-get-filename nil t)))
      (call-process "xdg-open" nil 0 nil file))))

;;; GTAGS
(use-package trupanka/tr-gtags :load-path "site-lisp")

(use-package ggtags
  :hook (dired-mode-hook . ggtags-mode))

;;; DIRED-X
(use-package dired-x)

(provide 'trupanka/tr-dired)
