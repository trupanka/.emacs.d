;;; PLANTUML
(use-package plantuml-mode
  :mode ("\\.\\(puml\\|plantuml\\)\\'" . plantuml-mode)
  :init
  (setq plantuml-jar-path "/usr/share/plantuml/lib/plantuml.jar"))

(provide 'trupanka/tr-plantuml)
