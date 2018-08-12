;;; HYDRA
(use-package hydra
  :after engine-mode
  :config
  (defhydra engine-mode-hydra ()
    "Engine mode"
    ("g" engine/search-gentoo "gentoo")
    ("s" engine/search-google "google")
    ("l" engine/search-lor "Linux.org.ru")
    ("b" engine/search-genesis "genesis")))

(provide 'trupanka/tr-hydra)
