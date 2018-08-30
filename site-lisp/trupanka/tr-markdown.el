;;; MARKDOWN
(use-package markdown-mode
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)))

;;; POLYMODE
(use-package poly-markdown :defer t
  :hook (markdown-mode . poly-markdown-mode)
  :hook (poly-markdown-mode . poly-markdown-setup)
  :preface
  (defun poly-markdown-setup ()
    (setq browse-url-browser-function 'browse-url-chromium)))

;;; PANDOC
(use-package trupanka/tr-pandoc :load-path "site-lisp")

(use-package markdown-mode
  :hook (markdown-mode . pandoc-mode))

(provide 'trupanka/tr-markdown)
