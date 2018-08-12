;;; FLYCHECK
(use-package flycheck
  :commands flycheck-mode
  :config
  (setq flycheck-highlighting-mode nil)
  (setq flycheck-check-syntax-automatically '(save mode-enabled)))

(provide 'trupanka/tr-flycheck)
