;;; MERCURY
(setq load-path (remove "/usr/share/emacs/site-lisp/mercury"
			load-path))

;;; ML
(setq load-path (remove "/usr/share/emacs/site-lisp/ocaml-mode"
			load-path))

;;; ORG
(setq load-path (remove "/usr/share/emacs/26.1/lisp/org" load-path))

;;; ROS
(add-to-list 'load-path "/opt/ros/lunar/share/emacs/site-lisp")

(provide 'trupanka/tr-loadpath)
