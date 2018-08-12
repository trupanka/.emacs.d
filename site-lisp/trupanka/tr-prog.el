;;; PROG
(use-package prog-mode
  :bind (:map prog-mode-map
	      ("M-s M-c" . compile)
	      ("M-s c" . recompile)))

;;; WHITESPACE
(use-package whitespace-mode
  :init
  (setq whitespace-line-column 80)
  (setq whitespace-style '(face trailing lines space-before-tab))
  (make-variable-buffer-local 'whitespace-line-column)
  (make-variable-buffer-local 'whitespace-style)
  :hook (prog-mode text-mode))

;;; ELECTRIC
(use-package electric
  :hook (prog-mode . prog-mode-setup)
  :preface
  (defun prog-mode-setup ()
    (electric-indent-local-mode t)))

;;; HS
(use-package hideshow
  :hook (prog-mode . hs-minor-mode)
  :preface
  :bind (:map hs-minor-mode-map
	      ("M-u h h" . hs-hide-all)
	      ("M-u h s" . hs-show-all)))

;;; MC
(use-package multiple-cursors
  :bind (:map trupanka-mode-map
	      ("C-c m t" . mc/mark-all-like-this)
	      ("C-c m m" . mc/mark-all-like-this-dwim)
	      ("C-c m l" . mc/edit-lines)
	      ("C-c m e" . mc/edit-ends-of-lines)
	      ("C-c m a" . mc/edit-beginnings-of-lines)
	      ("C-c m n" . mc/mark-next-like-this)
	      ("C-c m p" . mc/mark-previous-like-this)
	      ("C-c m s" . mc/mark-sgml-tag-pair)
	      ("C-c m d" . mc/mark-all-like-this-in-defun)))

;;; PAREDIT
(use-package paredit
  :bind (:map paredit-mode-map
              ("M-q" . nil)
              ("M-r" . nil)
              ("M-s" . nil)
              ("M-s (" . paredit-backward-slurp-sexp)
              ("M-s )" . paredit-forward-slurp-sexp)
              ("M-s }" . paredit-forward-barf-sexp)
              ("M-s {" . paredit-backward-barf-sexp)
              ("M-s q" . paredit-reindent-defun)
              ("M-s r" . paredit-raise-sexp)
              ("M-s s" . paredit-splice-sexp)
              ("M-s j" . paredit-splice-sexp-killing-forward)
              ("M-s k" . paredit-splice-sexp-killing-backward)
              ("M-s y" . paredit-copy-as-kill)))

;;; YAS
(use-package trupanka/tr-yas :load-path "site-lisp")

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode))

;;; HEXL
(use-package hexldiff :load-path "site-lisp/trupanka/scripts")

(provide 'trupanka/tr-prog)
