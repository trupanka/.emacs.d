			;;;;;;;;;;;;;;;;;;;;;
                        ;;  trupanka mode  ;;
			;;;;;;;;;;;;;;;;;;;;;

(defvar trupanka-mode-map (make-keymap) "Key bindings for trupanka-mode.")

(define-minor-mode trupanka-mode
  "trupanka's minor mode" t " ~trupanka" 'trupanka-mode-map)

;;; SETTINGS
(use-package trupanka/tr-settings :load-path "site-lisp" :demand
  :config
  :bind (:map trupanka-mode-map
	      ("M-j" . next-line)
	      ("M-k" . previous-line)
	      ("M-l" . forward-char)
	      ("M-h" . backward-char)
	      ("C-h" . backward-delete-char)
	      ("M-0" . delete-window)
	      ("M-1" . delete-other-windows)
	      ("M-2" . split-window-below)
	      ("M-3" . split-window-right)
	      ("M-7" . previous-buffer)
	      ("M-8" . next-buffer)
	      ("M-9" . next-multiframe-window)
	      ("M-s M-9" . previous-multiframe-window)
	      ("M-s M-h" . help-command)
	      ("M-s M-g" . gnus)
	      ("C-x C-b" . bs-show)
	      ("M-u M-a" . org-agenda)
	      ("M-u M-c" . org-capture)
	      ("M-u M-l" . org-store-link)
	      ("M-u M-g" . org-clock-goto))
  :hook (after-init . trupanka-settings-setup)
  :hook (after-init . trupanka-mode)
  :preface
  (defun trupanka-settings-setup ()
    (column-number-mode t)
    (show-paren-mode t)
    (pending-delete-mode t)
    (save-place-mode t)
    (recentf-mode t)
    (electric-indent-mode -1)))

(use-package xpaste :load-path "site-lisp/trupanka/scripts")
(use-package ttypaste :load-path "site-lisp/trupanka/scripts")
(use-package editline :load-path "site-lisp/trupanka/scripts")

;;; ER
(use-package expand-region
  :bind (:map trupanka-mode-map
	      ("M-u M-e" . er/expand-region)))

;;; IVY
(use-package trupanka/tr-ivy :load-path "site-lisp" :demand)

;;; HYDRA
(use-package trupanka/tr-hydra :load-path "site-lisp" :demand)

(use-package hydra
  :init
  (defhydra hydra-commands ()
    "Main"
    ("w" engine-mode-hydra/body "web" :exit t))
  :bind (:map trupanka-mode-map
	      ("M-u M-h" . hydra-commands/body)))

;;; STYLE
(use-package trupanka/tr-style :load-path "site-lisp" :demand)

;;; BROWSER
(use-package trupanka/tr-browser :load-path "site-lisp")

(provide 'trupanka)
