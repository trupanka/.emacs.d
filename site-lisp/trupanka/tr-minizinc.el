;;; MINIZINC
(use-package minizinc-mode
  :mode (("\\.mzn\\'" . minizinc-mode)
	 ("\\.fzn\\'" . minizinc-mode)
	 ("\\.dzn\\'" . minizinc-mode)))

(provide 'trupanka/tr-minizinc)
