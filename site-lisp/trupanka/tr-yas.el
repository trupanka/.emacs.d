;;; YAS
(use-package yasnippet
  :config
  (add-to-list 'yas-snippet-dirs "~/.emacs.d/site-lisp/trupanka/snippets")
  (yas-reload-all)
  :bind (:map yas-minor-mode-map
	      ("C-i" . nil)
	      ("M-s M-y" . yas-expand-from-trigger-key)))

(use-package createsnippet :load-path "site-lisp/trupanka/scripts"
  :after yasnippet)

(provide 'trupanka/tr-yas)
