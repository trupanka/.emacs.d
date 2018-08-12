;;; ISPELL
(use-package ispell
  :config
  (setq ispell-program-name "hunspell")
  (setq ispell-dictionary "ru_RU,en_US")
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "ru_RU,en_US"))

;;; DICTIONARY
(use-package dictionary
  :config
  (setq dictionary-server "localhost"))

;;; LANGTOOL
(use-package langtool :disabled
  :config
  (setq-default langtool-default-language "ru"
		langtool-mother-tongue "ru"
		langtool-disabled-rules "MORFOLOGIK_RULE_RU_RU"
		langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*"))

(provide 'trupanka/tr-spell)
