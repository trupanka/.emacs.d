;;; ESS
(use-package ess-mode :defer t
  :after whitespace
  :hook (ess-mode . whitespace-mode))

;;; RMARKDOWN
(use-package poly-R
  :mode (("\\.Snw\\'" . poly-noweb+r-mode)
	 ("\\.Rnw\\'" . poly-noweb+r-mode)
	 ("\\.Rmd\\'" . poly-markdown+r-mode)))

(provide 'trupanka/tr-R)
