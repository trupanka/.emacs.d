;;; PROLOG
(use-package prolog
  :mode ("\\.pl\\'" . prolog-mode)
  :config
  (setq prolog-program-name "swipl")
  (setq prolog-system 'swi))

;;; MERCURY
(use-package mdb :load-path "site-lisp/trupanka/scripts" :disabled)

(provide 'trupanka/tr-prolog)
