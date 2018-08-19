;;; LISP
(use-package lisp-mode
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl")
  (setq common-lisp-hyperspec-root "file:///usr/share/doc/hyperspec/HyperSpec/")
  :bind (:map lisp-mode-map
              ("M-s h h" . hyperspec-lookup)))

;;; SLIME
(use-package slime
  :after lisp-mode
  :config
  (setq slime-contribs '(slime-fancy))
  (setq slime-lisp-host "localhost")
  :bind (:map slime-mode-map
              ("M-s h h" . hyperspec-lookup)
              ("M-s e a" . slime-macroexpand-all)
	      ("M-s e 1" . slime-macroexpand-1))
  :hook (lisp-mode . slime-mode))

(use-package slime-repl
  :commands slime
  :bind (:map slime-repl-mode-map
              ("M-s" . nil)
              ("M-s h h" . hyperspec-lookup)
              ("M-s e a" . slime-macroexpand-all)
	      ("M-s e 1" . slime-macroexpand-1)))

;;; PAREDIT
(use-package paredit :defer t
  :hook (lisp-mode . paredit-mode))

(provide 'trupanka/tr-lisp)
