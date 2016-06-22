;; Extra config I apply on OSX
;; Assumes 'use-package' has already been set up

(defun mac-mimic-linux-bucky-keys ()
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

(defun mac-windowing-fixes ()
  (use-package exec-path-from-shell
    :ensure t
    :config
    (when (memq window-system '(mac ns))
      (exec-path-from-shell-initialize))))

(defun mac-mode ()
  (mac-mimic-linux-bucky-keys)
  (mac-windowing-fixes))

(provide 'mac-mode)
