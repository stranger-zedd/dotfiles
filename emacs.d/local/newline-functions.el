;; Function definitions for inserting newlines at start and end of lines
(defun open-line-after ()
  (interactive)
  (progn
    (end-of-line)
    (insert "\n")
    (indent-according-to-mode)))

(defun open-line-before ()
  (interactive)
  (progn
    (beginning-of-line)
    (insert "\n")
    (forward-line -1)
    (indent-according-to-mode)))

(provide 'newline-functions)
