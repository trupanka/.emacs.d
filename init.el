;;; init.el --- trupanka's config
;;
;;; Commentary:
;; i tak soidet
;;
;;; Code:

;;; LELPA
(setq package-archives
      '(("local" . "/home/trupanka/.emacs.d/.packages")))
(package-initialize)

(require 'use-package)

;;; TRUPANKA
(use-package trupanka :load-path "site-lisp/trupanka" :demand)
(use-package trupanka/tr-R :load-path "site-lisp")
(use-package trupanka/tr-asm :load-path "site-lisp")
(use-package trupanka/tr-c++ :load-path "site-lisp")
(use-package trupanka/tr-coq :load-path "site-lisp")
(use-package trupanka/tr-dict :load-path "site-lisp")
(use-package trupanka/tr-dired :load-path "site-lisp")
(use-package trupanka/tr-ein :load-path "site-lisp")
(use-package trupanka/tr-elisp :load-path "site-lisp")
(use-package trupanka/tr-gnus :load-path "site-lisp")
(use-package trupanka/tr-go :load-path "site-lisp")
(use-package trupanka/tr-haskell :load-path "site-lisp")
(use-package trupanka/tr-java :load-path "site-lisp")
(use-package trupanka/tr-js :load-path "site-lisp")
(use-package trupanka/tr-ledger :load-path "site-lisp")
(use-package trupanka/tr-lisp :load-path "site-lisp")
(use-package trupanka/tr-markdown :load-path "site-lisp")
(use-package trupanka/tr-maxima :load-path "site-lisp")
(use-package trupanka/tr-minizinc :load-path "site-lisp")
(use-package trupanka/tr-ml :load-path "site-lisp")
(use-package trupanka/tr-org :load-path "site-lisp")
(use-package trupanka/tr-plantuml :load-path "site-lisp")
(use-package trupanka/tr-prog :load-path "site-lisp")
(use-package trupanka/tr-prolog :load-path "site-lisp")
(use-package trupanka/tr-python :load-path "site-lisp")
(use-package trupanka/tr-ros :load-path "site-lisp")
(use-package trupanka/tr-ruby :load-path "site-lisp")
(use-package trupanka/tr-scheme :load-path "site-lisp")
(use-package trupanka/tr-sclang :load-path "site-lisp")
(use-package trupanka/tr-spell :load-path "site-lisp")
(use-package trupanka/tr-sql :load-path "site-lisp")
(use-package trupanka/tr-tex :load-path "site-lisp")
(use-package trupanka/tr-vc :load-path "site-lisp")
(use-package trupanka/tr-web :load-path "site-lisp")
(use-package trupanka/tr-yas :load-path "site-lisp")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-web-tools pandoc-mode xref-js2 js-comint js2-mode coffee-mode engine-mode w3m yasnippet-snippets yasnippet powerline multiple-cursors isend-mode company-anaconda pyenv-mode anaconda-mode company-go dictionary darkokai-theme undo-tree yaml-mode aggressive-indent tuareg caml merlin company-ghc company-lsp company-c-headers f ag rg ace-jump-mode disaster flycheck-irony flycheck-rtags gnuplot-mode go-mode gotham-theme htmlize julia-mode nix-mode notmuch package-lint realgud rust-mode sage-shell-mode ledger-mode org-plus-contrib bbdb ivy-rtags pinentry magit xcscope expand-region ggtags company-coq ivy-hydra flycheck lsp-ui cmake-ide cmake-mode company-irony company-rtags counsel irony rtags hlint-refactor shm ghc haskell-mode hindent emamux javadoc-lookup ein geiser racket-mode minizinc-mode pug-mode emmet-mode web-mode markdown-mode polymode enh-ruby-mode slime hydra ivy swiper plantuml-mode paredit nasm-mode color-theme-modern use-package)))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)

(provide 'init.el)
;;; init.el ends here
