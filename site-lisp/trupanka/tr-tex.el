;;; TEX
(use-package tex-mode
  :config
  (setq TeX-view-program-list
	'(("Zathura"
	   ("zathura "
	    (mode-io-correlate
	     " --synctex-forward %n:0:%b -x \"emacsclient +%{line} %{input}\" ")
	    " %o")
           "zathura")))
  (setq TeX-view-program-selection
	'(((output-dvi has-no-display-manager)
	   "dvi2tty")
	  ((output-dvi style-pstricks)
	   "dvips and gv")
	  (output-dvi "xdvi")
	  (output-pdf "Zathura")
	  (output-html "xdg-open")))
  :hook (LaTeX-mode . latex-mode-setup)
  :preface
  (defun latex-mode-setup ()
    (LaTeX-math-mode t)
    (reftex-mode t)
    (TeX-source-correlate-mode t)
    (define-key LaTeX-mode-map (kbd "M-s M-p") 'preview-at-point)
    (define-key LaTeX-mode-map (kbd "M-s M-u") 'preview-clearout-buffer)))

(provide 'trupanka/tr-tex)
