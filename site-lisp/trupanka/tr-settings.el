;;; LOADPATH
(use-package trupanka/tr-loadpath :load-path "site-lisp")

;;; USER
(setq user-full-name "Gangræna Gorgeous")
(setq user-mail-address "trupanka@gmail.com")

;;; RUSSIAN
(setq default-input-method 'russian-computer)

;;; TABS
(setq tab-width 4)
(setq indent-tabs-mode nil)
(fset 'yes-or-no-p 'y-or-n-p)

;;; EXIT
(setq confirm-kill-process nil)
(remove-hook 'kill-emacs-query-functions 'server-kill-emacs-query-functiona)
(remove-hook 'kill-buffer-query-functions 'process-kill-buffer-query-function)

;;; LINUM
(use-package linum
  :config
  (setq linum-format "%3d "))

;;; BACKUP, AUTOSAVE
(use-package files
  :config
  (setq make-backup-files nil)
  (setq auto-save-default nil)
  (setq create-lockfiles nil))

;;; RECENTF
(use-package recentf
  :config
  (setq recentf-max-menu-items 100))

;;; CLIPBOARD
(use-package select
  :config
  (setq-default select-enable-clipboard nil)
  (setq-default select-enable-primary t))

;;; WINNER
(use-package winner :demand
  :config
  (winner-mode t)
  :bind (:map winner-mode-map
	      ("M-s M-j" . winner-undo)
	      ("M-s M-k" . winner-redo)))

;;; SUNRISE
(use-package calendar :defer t
  :config
  (setq calendar-longitude 40.4058804)
  (setq calendar-latitude 56.1376416))

;;; EPA
(use-package epa
  :config
  (setq epa-pinentry-mode 'loopback))

(provide 'trupanka/tr-settings)
