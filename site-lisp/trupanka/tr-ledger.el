;;; LEDGER
(use-package ledger-mode :defer t
  :config
  (setq ledger-reconcile-default-commodity "R"))

(provide 'trupanka/tr-ledger)
