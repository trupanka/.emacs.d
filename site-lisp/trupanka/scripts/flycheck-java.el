(require 'flycheck)

(flycheck-define-checker java
  "A Java syntax and style checker"
  :command ("javac" source)
  :error-patterns
  ((error line-start (file-name) ":" line ":" (message) line-end))
  :modes java-mode)

(add-to-list 'flycheck-checkers 'java)

(provide 'flycheck-java)
