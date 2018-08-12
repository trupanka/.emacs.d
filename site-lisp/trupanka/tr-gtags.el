;;; GGTAGS
(use-package ggtags
  :config
  (setq ggtags-auto-jump-to-match nil)
  (setq ggtags-enable-navigation-keys t)
  :bind (:map ggtags-mode-map
	      ("M-." . nil)
	      ("M-," . nil)
	      ("M-]" . nil)
	      ("C-c M-." . ggtags-find-tag-dwim)
	      ("C-c M-]" . ggtags-find-reference)
	      ("C-c M-r" . ggtags-find-tag-regexp))
  :bind (:map ggtags-navigation-map
	      ("C-c M-a" . ggtags-navigation-mode-abort)))

(provide 'trupanka/tr-gtags)
