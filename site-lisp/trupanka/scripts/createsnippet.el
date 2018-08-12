(defun create-snippet (filename)
  (interactive "s")
  (let ((mode (symbol-name major-mode)))
    (find-file (format "~/.emacs.d/site-lisp/trupanka/snippets/%s/%s" mode filename))
    (snippet-mode)))

(provide 'createsnippet)
