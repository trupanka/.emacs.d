;;; W3M
(use-package w3m
  :init
  (setq w3m-profile-directory "~/.emacs.d/.w3m")
  :config
  (setq w3m-confirm-leaving-secure-page nil)
  :hook (w3m-mode . w3m-mode-setup)
  :preface
  (defun w3m-mode-setup ()
    (setq browse-url-browser-function 'browse-url-chromium)))

(setq eww-search-prefix
      "file:///usr/share/doc/hyperspec/HyperSpec/Front/Help.htm")

;;; EWW
(use-package eww
  :config
  (setq eww-search-prefix
	"file:///usr/share/doc/hyperspec/HyperSpec/Front/Help.htm"))

;;; ENGINE-MODE
(use-package engine-mode
  :config
  (setq engine/browser-function 'w3m-browse-url)
  (defengine gentoo "https://bugs.gentoo.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=RESOLVED&bug_status=VERIFIED&f0=OP&f1=OP&f2=alias&f3=short_desc&f4=CP&f5=CP&j1=OR&list_id=4009822&o2=substring&o3=substring&order=bug_id DESC&query_format=advanced&v2=%s&v3=%s" :keybinding "g")
  (defengine google "http://google.com/search?q=%s" :keybinding "s")
  (defengine lor "https://www.linux.org.ru/search.jsp?q=%s&range=ALL&interval=ALL&user=&_usertopic=on" :keybinding "l")
  (defengine genesis "http://gen.lib.rus.ec/search.php?req=%s" :keybinding "b")
  (engine-mode t))

(setq browse-url-browser-function 'w3m-goto-url-new-session)
(make-variable-buffer-local 'browse-url-browser-function)

(provide 'trupanka/tr-browser)
