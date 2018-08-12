;;; GNUS
(use-package gnus
  :commands gnus
  :config
  (setq gnus-init-file "~/.emacs.d/site-lisp/trupanka/.gnus.el"))

;;; MESSAGE
(use-package trupanka/tr-org :load-path "site-lisp")

(use-package message
  :mode ("/mutt" . message-mode)
  :after (org whitespace)
  :hook (message-mode . message-mode-setup)
  :preface
  (defun message-mode-setup ()
    (whitespace-mode t)))

;;; BBDB
(use-package bbdb
  :after (gnus message)
  :config
  (setq bbdb-file "~/.emacs.d/bbdb")
  (setq bbdb-mua-auto-update-p 'query)
  (bbdb-initialize 'gnus 'message)
  (bbdb-mua-auto-update-init 'message))

;;; PINENTRY
(use-package trupanka/tr-pinentry :load-path "site-lisp")

(provide 'trupanka/tr-gnus)
