;;; C/C++
(use-package cc-mode
  :mode (("\\.h\\(h\\|xx\\|pp\\)\\'" . c++-mode)
         ("\\.tpp\\'" . c++-mode))
  :hook ((c-mode c++-mode) . cc-mode-c-setup)
  :preface
  (defun cc-mode-c-setup ()
    (c-set-style "linux")
    (setq c-basic-offset 4)
    (c-set-offset 'inline-open nil)))

;;; IRONY
(use-package irony
  :config
  (irony-cdb-autosetup-compile-options)
  :hook ((c-mode c++-mode) . irony-mode))

;;; CSCOPE
(use-package trupanka/tr-cscope :load-path "site-lisp")

(use-package cc-mode
  :hook ((c-mode c++-mode) . cscope-minor-mode))

;;; GTAGS
(use-package trupanka/tr-gtags :load-path "site-lisp")

(use-package ggtags
  :hook ((c-mode c++-mode) . ggtags-mode))

;;; RTAGS
(use-package rtags
  :config
  (setq rtags-jump-to-first-match nil)
  (rtags-enable-standard-keybindings))

;;; CMAKE
(use-package cmake-ide
  :config
  (cmake-ide-setup)
  (setq cmake-ide-build-dir ".build/release"))

(use-package cmake-mode
  :mode ("CMakeLists.txt" "\\.cmake\\'"))

;;; COMPANY
(use-package trupanka/tr-company :load-path "site-lisp")

(use-package company
  :init
  (add-hook 'c-mode-hook 'company-mode t)
  (add-hook 'c++-mode-hook 'company-mode t)
  (add-hook 'cmake-mode-hook 'company-mode t))

(use-package trupanka/tr-company-c++ :load-path "site-lisp")

;;; REALGUD
(use-package trupanka/tr-realgud :load-path "site-lisp")

;;; FLYCHECK
(use-package trupanka/tr-flycheck :load-path "site-lisp")

(use-package flycheck-irony :disabled
  :after flycheck
  :config
  (flycheck-irony-setup))

(use-package flycheck-rtags
  :after flycheck)

(provide 'trupanka/tr-c++)
