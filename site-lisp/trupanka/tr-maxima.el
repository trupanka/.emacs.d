;;; MAXIMA
(use-package maxima
  :mode (("\\.dem\\'" . maxima-mode)
	 ("\\.mac\\'" . maxima-mode))
  :init
  (setenv "MAXIMA_LISP" "sbcl")
  (setenv "TCLLIBPATH" "/usr/lib/tcltk/vtk-8.1/"))

;;; IMAXIMA
(use-package imaxima :defer t
  :init
  (setq imaxima-use-maxima-mode-flag t))

(provide 'trupanka/tr-maxima)
