;;; ASM
(use-package nasm-mode)

(use-package asm-mode
  :mode ("\\.\\(fasm\\|asm\\|s\\|S\\)\\'" . asm-mode)
  :after nasm-mode
  :bind (:map asm-mode-map
              ("C-m" . newline))
  :hook (asm-mode . asm-mode-setup)
  :preface
  (defun asm-mode-setup ()
    (electric-indent-local-mode -1)
    (setq tab-always-indent nil)
    (setq indent-line-function 'nasm-indent-line)))

(provide 'trupanka/tr-asm)
