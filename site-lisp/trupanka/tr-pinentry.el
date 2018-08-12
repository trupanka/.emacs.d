;;; PINENTRY
(use-package pinentry
  :after (:any magit gnus)
  :config
  (pinentry-start))

(provide 'trupanka/tr-pinentry)
