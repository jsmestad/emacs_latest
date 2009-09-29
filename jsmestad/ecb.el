(load-file "~/.emacs.d/vendor/cedet/common/cedet.el")
(require 'ecb-autoloads)

;; Flymake confuses ecb's idea of which buffers are compilation buffers
(defun comint-but-not-flymake-p (buf)
  (and (comint-check-proc buf)
       (not (buffer-local-value 'flymake-mode-line buf))))
(setq ecb-compilation-predicates '(comint-but-not-flymake-p))