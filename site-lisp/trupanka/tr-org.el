;;; ORG
(use-package org :demand
  :config
  (setq org-modules '(org-bbdb
                      org-bibtex
		      org-collector
		      org-contacts
                      org-crypt
		      org-docview
		      org-expiry
                      org-gnus
		      org-habit
                      org-id
                      org-info
                      org-inlinetask
		      org-interactive-query
                      org-mhe
		      org-mobile
                      org-protocol
		      org-screen
		      org-toc
                      org-w3m))
  (setq org-hide-leading-stars t)
  (setq org-cycle-separator-lines 0)
  (setq org-special-ctrl-a/e t)
  (setq org-special-ctrl-k t)
  (setq org-yank-adjusted-subtrees t)
  (setq org-clone-delete-id t)
  (setq org-catch-invisible-edits 'error)
  (setq org-directory "~/.org")
  (setq org-default-notes-file "~/.org/notes/notes.org")
  (setq org-log-done 'time)
  (setq org-log-repeat 'time)
  (setq org-log-into-drawer t)
  (setq org-log-state-notes-insert-after-drawers nil)
  (setq org-columns-default-format
	"%TODO %40ITEM %3PRIORITY %5Effort{:} %TAGS")
  (setq org-global-properties
	'("Effort_ALL". "0:05 0:15 0:30 1:00 2:00 3:00 4:00 6:00 8:00"))
  (setq org-enforce-todo-dependencies t)
  (setq org-todo-keywords
	'((sequence
	   "TODO(t)"			; todo task
	   "NEXT(n)"			; next task
	   "STARTED(s!)"		; active task
	   "PROGRESS(p!)"		; active task
	   "WAITING(w@/!)"		; pending task
	   "DEPENDENCY(~!)"		; external task
	   "SOMEDAY(#)" "|" "DONE(d!)" "CANCELLED(c@)")
	  (sequence "LEARN(l)" "READ(r)" "TRY(?)" "|" "COMPLETE(x!)")
	  (sequence "POST(,)" "CHAT(.)" "MAIL(m)" "PHONE(i)")
	  (sequence "GOAL(g)" "|" "ACHIVED(a!)")))
  (setq org-todo-keyword-faces
        '(("TODO" . (:foreground "green" :weight bold))
	  ("NEXT" . (:foreground "green" :weight bold))
	  ("STARTED" . (:foreground "green" :weight bold))
	  ("PROGRESS" . (:foreground "green" :weight bold))
	  ("DONE" . (:foreground "cyan" :weight bold))
	  ("COMPLETE" . (:foreground "cyan" :weight bold))
	  ("ACHIVED" . (:foreground "cyan" :weight bold))
          ("WAITING" . (:foreground "red" :weight bold))
	  ("DEPENDENCY" . (:foreground "brightwhite" :weight bold))
	  ("CANCELLED" . (:foreground "red" :weight bold))
	  ("LEARN" . (:foreground "pink" :weight bold))
	  ("READ" . (:foreground "pink" :weight bold))
	  ("TRY" . (:foreground "pink" :weight bold))
	  ("POST" . (:foreground "blue" :weight bold))
	  ("CHAT" . (:foreground "blue" :weight bold))
	  ("MAIL" . (:foreground "blue" :weight bold))
	  ("PHONE" . (:foreground "blue" :weight bold))
	  ("GOAL" . (:foreground "brightwhite" :weight bold))
          ("SOMEDAY" . (:foreground "gray" :weight bold))))
  (setq org-todo-state-tags-triggers
	'(("STARTED" ("ACTIVE" . t) ("PENDING"))
	  ("PROGRESS" ("ACTIVE" . t) ("PENDING"))
	  ("WAITING" ("ACTIVE") ("PENDING" . t))
	  ("DEPENDENCY" ("DEPENDENCY" . t) ("ACTIVE") ("PENDING"))
	  ("" ("ACTIVE") ("PENDING"))
	  ("TODO" ("ACTIVE") ("PENDING"))
	  ("NEXT" ("ACTIVE") ("PENDING"))
	  ("SOMEDAY" ("ACTIVE") ("PENDING"))
	  (done ("ACTIVE") ("PENDING"))))
  (setq org-fast-tag-selection t)
  (setq org-tag-alist '((:startgroup)
			("ACTIVE" . ?@)
			("PENDING" . ?!)
			("DEPENDENCY" . ?~)
			(:endgroup)
			("activity" . ?a)
			("browser" . ?b)
			("coding" . ?c)
			("design" . ?d)
			("food" . ?f)
			("goto" . ?g)
			("home" . ?h)
			("journey" . ?j)
			("listening" . ?l)
			("music" . ?m)
			("phone" . ?p)
			("reading" . ?r)
			("self" . ?\ )
			("shopping" . ?$)
			("sleeping" . ?z)
			("social" . ?s)
			("system" . ?*)
			("training" . ?t)
			("chat" . ?:)
			("watching" . ?&)
			("writing" . ?w)
			("@connect" . ?C)
			("@learn" . ?L)
			("@meet" . ?M)
			("@plan" . ?P)
			("@try" . ?T)
			("@task" . ??)
			("@work" . ?W)
			("#project" . ?0)
			("#journal" . ?1)
			("#link" . ?2)
			("#note" . ?3)))
  (setq org-stuck-projects
	'("+#project+LEVEL=2/-SOMEDAY-DONE-COMPLETE-ACHIVED-CANCELLED" ("NEXT" "STARTED" "PROGRESS") nil "\\<IGNORE\\>"))
  (setq org-src-fontify-natively t)
  (setq org-src-tab-acts-natively t)
  (setq org-src-preserve-indentation nil)
  (setq org-edit-src-content-indentation 0)
  (setq org-reverse-note-order t)
  (setq org-refile-targets '((nil :maxlevel . 9)
                             (org-agenda-files :maxlevel . 9)))
  (setq org-habit-graph-column 50)
  (setq org-habit-show-habits-only-for-today t)
  (setq org-agenda-persistent-filter t)
  (setq org-use-speed-commands t)
  (setq org-speed-commands-user '(("J" org-metadown)
				  ("K" org-metaup)
				  ("L" org-metaright)
				  ("H" org-metaleft)
				  ("N" org-narrow-to-subtree)
				  ("W" widen)))
  :bind (:map org-mode-map
	      ("M-p" . org-previous-visible-heading)
	      ("M-n" . org-next-visible-heading)
	      ("M-u M-j" . org-timestamp-down)
	      ("M-u M-k" . org-timestamp-up)
	      ("M-u M-t" . org-toggle-timestamp-type)
	      ("M-u M-b" . org-switchb)
	      ("M-u M-i" . org-clock-in)
	      ("M-u M-o" . org-clock-out)
	      ("M-u M-d" . org-clock-display)
	      ("M-u M-q" . org-clock-cancel)
	      ("M-u M-z" . org-resolve-clocks)
	      ("M-u C-w" . org-cut-special)
	      ("M-u C-y" . org-paste-special)
	      ("M-u M-w" . org-copy-special)
	      ("M-u ." . org-timer-start)
	      ("M-u ," . org-timer-pause-or-continue)
	      ("M-u M-," . org-timer-stop)
	      ("M-u M-." . org-timer)
	      ("M-u M-;" . org-timer-set-timer)
	      ("M-u c c" . org-columns)
	      ("M-u c i" . org-columns-insert-dblock)
	      ("M-u C-v" . org-toggle-inline-images))
  :hook (org-mode . org-mode-setup)
  :preface
  (defun org-mode-setup ()
    (whitespace-mode -1)))

;; ORG-CAPTURE
(use-package org-capture
  :config
  (setq org-capture-use-agenda-date t)
  (setq org-basic-task-template "* TODO %^{Task}
  :PROPERTIES:
  :Effort: %^{effort|1:00|0:05|0:15|0:30|2:00|4:00|6:00|8:00}
  :END:
  %?
  %i")
  (setq org-capture-templates
	`(("t" "Tasks")
	  ("tt" "Task" entry
	   (file+headline "~/.org/todo/todo.org" "Global TODO list")
	   ,org-basic-task-template
	   :prepend t :empty-lines 1)
	  ("tq" "Quick task" entry
	   (file+headline "~/.org/todo/todo.org" "Quick tasks")
	   "* TODO %^{Task}\n  SCHEDULED: %t\n"
	   :empty-lines 1)
	  ("ti" "Interrupting task" entry
	   (file+headline "~/.org/todo/todo.org" "Tasks")
	   "* STARTED %^{Task}"
	   :clock-in :clock-keep)
	  ("tp" "Social task" entry
	   (file+headline "~/.org/social/social.org" "Social TODO list")
	   ,org-basic-task-template
	   :prepend t :empty-lines 1)
	  ("tg" "Goal" entry
	   (file+headline "~/.org/goals/goals.org" "Goals")
	   "* GOAL %?\n  %U"
	   :empty-lines 1)
	  ("d" "Done")
	  ("dt" "Done - Task" entry
	   (file+headline "~/.org/todo/todo.org" "Tasks")
	   "* DONE %^{Task}\nSCHEDULED: %^t\n%?"
	   :empty-lines 1)
	  ("dp" "Done - Social" entry
	   (file+headline "~/.org/social/social.org" "Tasks")
	   "* DONE %^{Task}\nSCHEDULED: %^t\n%?"
	   :empty-lines 1)
	  ("c" "Connections")
	  ("cm" "Respond" entry
	   (file+headline "~/.org/social/social.org" "Tasks")
           "* MAIL to %:from on %:subject\n  SCHEDULED: %t\n  %a"
	   :immediate-finish t)
	  ("cp" "POST" entry
	   (file+headline "~/.org/social/social.org" "Tasks")
           "* POST to %a\n  SCHEDULED: %t"
	   :immediate-finish t)
	  ("a" "Activity tracking")
	  ("aa" "Activity" table-line
	   (file+headline "~/.org/activity/activity.org" "Activity")
	   "| %^{Type} | %U | %^{Note}"
	   :clock-in :clock-keep :prepend t :jump-to-captured t :unnarrowed t)
	  ("ar" "Reading" table-line
	   (file+headline "~/.org/activity/reading.org" "Reading")
	   "| %U | %? |"
	   :clock-in :clock-keep :prepend t :jump-to-captured t :unnarrowed t)
	  ("as" "System" table-line
	   (file+headline "~/.org/activity/system.org" "System")
	   "| %U | %^{Note} |"
	   :clock-in :clock-keep :prepend t :jump-to-captured t :unnarrowed t)
	  ("at" "Training" table-line
	   (file+headline "~/.org/activity/training.org" "Training")
	   "| %U | %?"
	   :clock-in :clock-keep :prepend t :jump-to-captured t :unnarrowed t)
	  ("az" "Sleeping" table-line
	   (file+headline "~/.org/activity/sleeping.org" "Sleeping")
	   "| %U |   |   |"
	   :clock-in :clock-keep :prepend t :jump-to-captured t :unnarrowed t)
	  ("n" "Notes")
	  ("nn" "Note" entry
	   (file+headline "~/.org/notes/notes.org" "Notes")
	   "* %^{Title}\n  URL: %a\n\n  %i\n\n  %U"
	   :jump-to-captured t :empty-lines 1)
	  ("nq" "Quick note" item
	   (file+headline "~/.org/notes/quick.org" "Quick notes"))
	  ("nb" "Brainstorm" entry
	   (file+datetree "~/.org/notes/brain.org")
	   "* %^{Title}\n%U\n%?"
	   :jump-to-captured t)
	  ("nw" "Web note" entry
	   (file+headline "~/.org/notes/web.org" "Web notes")
	   "* %^{Title}\n  URL: %a\n\n  %i\n\n  %U"
	   :jump-to-captured t :empty-lines 1)
	  ("nc" "Code note" entry
	   (file+headline "~/.org/notes/code.org" "Code notes")
	   "* %^{Title}\n  URL: %a\n\n  #+BEGIN_SRC %^{Language}\n  %i\n  #+END_SRC\n\n  %U"
	   :jump-to-captured t :empty-lines 1)
	  ("nh" "HTML note" entry
	   (file+olp "~/.org/notes/html.org" "HTML notes")
	   "* %c\n\n  %?%:initial\n\n  %U"
	   :jump-to-captured t :empty-lines 1)
	  ("nl" "Link" item
	   (file+headline "~/.org/notes/links.org" "Links")
	   "%a"
	   :immediate-finish t)
	  ("j" "Journal")
	  ("jj" "Journal entry" plain
	   (file+datetree "~/.org/journal/journal.org")
	   "**** %^{Entry}\n     %U\n\n%?\n%i"
	   :unnarrowed t :jump-to-captured t :empty-lines 1)
	  ("jd" "Journal entry with date" plain
	   (file+datetree+prompt "~/.org/journal/journal.org")
	   "**** %^{Entry}\n     %U\n\n%?\n%i"
	   :unnarrowed t :time-prompt t :jump-to-captured t :empty-lines 1)
	  ("l" "Ledger entries")
	  ("le" "Assets > Payee" plain
	   (file "~/.org/ledger/main.ledger")
	   "%(org-read-date) %^{Payee}
    ; %?
    Expenses:  R%^{Amount}
    Assets:%^{Account}"
	   :immediate-finish t jump-to-captured t :empty-lines 1))))

;;; ORG-AGENDA
(use-package org-agenda :demand
  :commands org-agenda
  :config
  (kill-local-variable 'org-agenda-files)
  (setq org-agenda-files '("/home/trupanka/.org/init.org"))
  (setq org-agenda-todo-ignore-with-date nil)
  (setq org-agenda-todo-ignore-deadlines nil)
  (setq org-agenda-todo-ignore-scheduled nil)
  (setq org-agenda-todo-ignore-timestamp nil)
  (setq org-agenda-skip-deadline-if-done t)
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-agenda-skip-timestamp-if-done t)
  (setq org-agenda-span 10)
  (setq org-agenda-start-day "-3d")
  (setq org-agenda-start-on-weekday nil)
  (setq org-agenda-show-log t)
  (setq org-agenda-log-mode-items '(closed clock state))
  (setq org-agenda-tag-filter-preset '("-DEPENDENCY" "-#note" "-#journal"))
  (setq org-agenda-custom-commands
	'(("n" todo "NEXT"
	   ((org-agenda-files '("~/.org"))
	    (org-agenda-overriding-header "NEXT")))
	  ("@" alltodo ""
	   ((org-agenda-overriding-header "Active tasks")
	    (org-agenda-tag-filter-preset '("+ACTIVE"))))
	  ("A" "Active agenda" agenda ""
           ((org-agenda-tag-filter-preset '("+ACTIVE"))))))
  (setq org-clock-out-remove-zero-time-clocks t)
  (setq org-clock-sound "~/.local/share/sounds/freedesktop/stereo/complete.wav")
  (setq org-clock-persist t)
  (setq org-clock-report-include-clocking-task t)
  (setq org-agenda-clockreport-parameter-plist
	'(:link t :maxlevel 5 :fileskip0 t :compact t :narrow 80!))
  (org-clock-persistence-insinuate)
  :bind (:map org-agenda-mode-map
	      ("M-u ." . org-timer-start)
	      ("M-u ," . org-timer-pause-or-continue)
	      ("M-u M-," . org-timer-stop)
	      ("M-u M-." . org-timer)
	      ("M-u M-;" . org-timer-set-timer)
	      ("M-u M-<" . org-agenda-set-restriction-lock-from-agenda)
	      ("M-u M->" . org-agenda-remove-restriction-lock)
	      ("M-u C-c" . org-agenda-columns))
  :hook (org-agenda-mode . org-agenda-mode-setup)
  :hook (after-change-major-mode . org-agenda-dir-locals-setup)
  :preface
  (defun org-agenda-mode-setup ()
    (hl-line-mode 1))
  (defun org-agenda-dir-locals-setup ()
    (when (derived-mode-p 'org-mode 'org-agenda-mode)
      (hack-dir-local-variables-non-file-buffer))))

;;; ORG-PROTOCOL
(use-package org-protocol :demand)

;;; ORG-BABEL
(use-package ob :demand
  :config
  (setq org-babel-languages
	'((C . t)
          (R . t)
	  (awk . t)
	  (coq . t)
          (dot . t)
	  (emacs-lisp . t)
          (gnuplot . t)
          (haskell . t)
	  (java . t)
          (latex . t)
          (ledger . t)
	  (lisp . t)
	  (makefile . t)
	  (maxima . t)
	  (octave . t)
          (org . t)
          (plantuml . t)
          (python . t)
	  (ipython . t)
          (ruby . t)
	  (scheme . t)
	  (sed . t)
          (shell . t)
	  (sql . t)))
  (setq org-confirm-babel-evaluate nil)
  (setq org-plantuml-jar-path "/usr/share/plantuml/lib/plantuml.jar")
  (org-babel-do-load-languages 'org-babel-load-languages org-babel-languages))

;;; OB-ASYNC
(use-package ob-async :demand t
  :after ob)

;;; OB-IPYTHON
(use-package ob-ipython :demand t
  :after ob)

;;; OX
(use-package ox :demand
  :config
  (setq org-html-mathjax-options
	'((path "file:///usr/share/mathjax/MathJax.js")
          (scale "100")
          (align "center")
          (indent "2em")
          (mathml nil)))
  (setq org-html-inline-images t)
  (setq org-html-head-include-default-style nil)
  (setq org-export-htmlize-output-type 'css)
  (setq org-export-headline-levels 10)
  (setq org-latex-listings t))

;;; ORG-MOBILE
(use-package org-mobile :demand
  :config
  (setq org-mobile-directory "~/.org/mobile/")
  (setq org-mobile-files '("~/.org/mobile/mobile.org"))
  (setq org-mobile-inbox-for-pull "~/.org/mobile/from-mobile.org")
  (setq org-mobile-agendas 'list)
  :bind (:map org-mode-map
	      ("M-u m o" . org-mobile-webdav-push)
	      ("M-u m i" . org-mobile-webdav-pull))
  :preface
  (defun org-mobile-webdav-push ()
    (interactive)
    (org-mobile-push)
    (async-shell-command "cadaver-push"))
  (defun org-mobile-webdav-pull ()
    (interactive)
    (shell-command "cadaver-pull")
    (org-mobile-pull)))

;;; ORG-PROTOCOL-CAPTURE-HTML
(use-package org-protocol-capture-html
  :load-path "site-lisp/org-protocol-capture-html" :demand)

;;; ORG-WEB-TOOLS
(use-package org-web-tools :demand
  :after org
  :bind (:map org-mode-map
	      ("M-u C-d" . org-cleanup-pandoc-output))
  :preface
  (defun org-cleanup-pandoc-output ()
    (interactive)
    (org-web-tools--clean-pandoc-output)))

;;; PANDOC
(use-package trupanka/tr-pandoc :load-path "site-lisp")

(use-package org
  :hook (org-mode . pandoc-mode))

(provide 'trupanka/tr-org)
