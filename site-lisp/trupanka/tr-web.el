;;; WEB
(use-package web-mode
  :mode (("\\.html?\\'" . web-mode)
	 ("\\.tmpl\\'" . web-mode)
	 ("\\.jsx\\'" . web-mode))
  :config
  (setq web-mode-content-types-alist
	'(("jsx"  . "\\.jsx\\'")))
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  :hook (web-mode . web-mode-setup)
  :preface
  (defun web-mode-setup ()
    (setq browse-url-browser-function 'browse-url-chromium)))

;;; EMMET
(use-package emmet-mode
  :hook (web-mode . emmet-mode))

;;; PUG
(use-package pug-mode
  :config
  (setq pug-tab-width 2))

;;; SKEWER
(use-package skewer-html
  :after web-mode
  :hook (web-mode . skewer-html-mode)
  :hook (css-mode . skewer-css-mode))

(use-package skewer-css
  :after css-mode
  :hook (css-mode . skewer-css-mode))

;;; IMPATIENT
(use-package impatient-mode
  :config
  (setq impatient-mode-delay 1e10)
  :hook (web-mode . impatient-mode)
  :hook (after-save . imp--update-buffer))

(provide 'trupanka/tr-web)
