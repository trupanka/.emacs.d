;;; CLOJURE-MODE
(use-package clojure-mode
  :mode (("\\.cljs?\\'" . clojure-mode)))

;;; CIDER
(use-package cider
  :hook (clojure-mode . cider-mode))

(provide 'trupanka/tr-clojure)
