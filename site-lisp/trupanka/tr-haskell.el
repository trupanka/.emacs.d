;;; HASKELL
(use-package haskell-mode
  :bind (:map haskell-mode-map
	      ("M-s" . nil)
	      ("M-s h h" . haskell-hoogle-lookup-from-local))
  :hook (haskell-mode . haskell-mode-setup)
  :preface
  (defun haskell-mode-setup ()
    (setq browse-url-browser-function 'browse-url-firefox)))

;;; GHC-MOD
(use-package ghc
  :after haskell-mode
  :hook (haskell-mode . ghc-mod-setup)
  :preface
  (defun ghc-mod-setup ()
    (ghc-init)))

;;; HINDENT
(use-package hindent
  :after haskell-mode
  :hook (haskell-mode . hindent-mode))

;;; SHM
(use-package shm
  :after haskell-mode
  :bind (:map shm-map
	      ("M-s" . nil)
	      ("M-a" . nil)
	      ("M-k" . nil)
	      ("M-r" . nil)
	      ("M-w" . nil)
	      ("M-y" . nil)
	      ("M-s a" . shm/goto-parent)
	      ("M-s k" . shm/kill-node)
	      ("M-s r" . shm/raise)
	      ("M-s s" . shm/splice)
	      ("M-s w" . shm/copy-region)
	      ("M-s y" . shm/yank-pop))
  :hook (haskell-mode . structured-haskell-mode))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'haskell-mode-hook 'company-mode t)
  :bind (:map company-mode-map
	      ("C-M-_" . complete-symbol)))

(use-package company-ghc
  :after company
  :init
  (add-hook 'haskell-mode-hook 'company-ghc-setup t)
  :preface
  (defun company-ghc-setup ()
    (add-to-list 'company-backends 'company-ghc)))

(provide 'trupanka/tr-haskell)
