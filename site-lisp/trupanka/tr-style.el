;;; EMACS
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)

;;; THEME
(use-package arjen-theme
  :if (not window-system)
  :config
  (load-theme 'arjen t)
  :custom-face
  ;; diff
  (diff-added ((t (:foreground "black" :background "#84f3a3"))))
  (diff-indicator-added ((t (:foreground "black" :background "#84f3a3"))))
  (diff-removed ((t (:foreground "black" :background "brightyellow"))))
  (diff-indicator-removed ((t (:foreground "black" :background "brightyellow"))))
  ;; ediff
  (ediff-even-diff-A ((t (:foreground "black" :background "white"))))
  (ediff-even-diff-B ((t (:foreground "black" :background "white"))))
  (ediff-odd-diff-A ((t (:foreground "black" :background "white"))))
  (ediff-odd-diff-B ((t (:foreground "black" :background "white"))))
  (ediff-current-diff-A ((t (:foreground "brightyellow" :background "#070707"))))
  (ediff-current-diff-B ((t (:foreground "#84f3a3" :background "#070707"))))
  (ediff-fine-diff-A ((t (:foreground "black" :background "brightyellow"))))
  (ediff-fine-diff-B ((t (:foreground "black" :background "#84f3a3"))))
  ;; magit-diff
  (magit-diff-added ((t (:foreground "black" :background "#84f3a3"))))
  (magit-diff-added-highlight ((t (:foreground "black" :background "#84f3a3"))))
  (magit-diff-their ((t (:foreground "black" :background "#84f3a3"))))
  (magit-diff-their-highlight ((t (:foreground "black" :background "#84f3a3"))))
  (magit-diff-our ((t (:foreground "black" :background "brightyellow"))))
  (magit-diff-our-highlight  ((t (:foreground "black" :background "brightyellow"))))
  (magit-diff-removed ((t (:foreground "black" :background "brightyellow"))))
  (magit-diff-removed-highlight  ((t (:foreground "black" :background "brightyellow"))))
  ;; hl-line
  (hl-line  ((t (:foreground "black" :background "white"))))
  ;; org-habit
  (org-habit-alert-face  ((t (:foreground "black" :background "#f5f946"))))
  (org-habit-alert-future-face  ((t (:foreground "black" :background "#fafca9"))))
  (org-habit-clear-face  ((t (:foreground "black" :background "#8270f9"))))
  (org-habit-clear-future-face  ((t (:foreground "black" :background "#d6e4fc"))))
  (org-habit-overdue-face  ((t (:foreground "black" :background "#f9372d"))))
  (org-habit-overdue-future-face  ((t (:foreground "black" :background "#fc9590"))))
  (org-habit-ready-face  ((t (:foreground "black" :background "#4df946"))))
  (org-habit-ready-future-face  ((t (:foreground "black" :background "#acfca9"))))
  ;; org-agenda
  (org-agenda-dimmed-todo-face  ((t (:foreground "blue")))))

(use-package darkokai-theme
  :disabled
  :config
  (load-theme 'darkokai t))

(use-package gotham-theme
  :if window-system
  :config
  (load-theme 'gotham t))

;;; STYLE
(add-to-list 'default-frame-alist '(font . "Andale Mono 12"))

;;; WINDOW-SYSTEM STYLE
(when (window-system)
  (add-to-list 'default-frame-alist '(font . "Noto Mono 12")))

(provide 'trupanka/tr-style)
