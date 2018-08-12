;;; IVY
(use-package ivy :defer t
  :config
  (setq ivy-display-style 'plain)
  (setq ivy-display-function 'ivy-display-function-fallback)
  :bind (:map ivy-mode-map
	      ("M-s M-s" . swiper))
  :hook (after-init . ivy-mode))

;;; COUNSEL
(use-package counsel
  :after ivy
  :bind (:map ivy-mode-map
              ("C-x C-g" . counsel-recentf)
	      ("M-u M-u" . counsel-org-goto-all)))

(provide 'trupanka/tr-ivy)
