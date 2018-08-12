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
    (setq browse-url-browser-function 'browse-url-firefox)))

;;; EMMET
(use-package emmet-mode
  :hook (web-mode . emmet-mode))

;;; PUG
(use-package pug-mode
  :config
  (setq pug-tab-width 2))

(provide 'trupanka/tr-web)
