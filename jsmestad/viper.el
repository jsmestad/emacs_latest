;; Viper Hook
;; Make mode-line colored
(setq viper-mode t)
(require 'viper)
(eval-after-load 'viper
   '(progn
     (setq viper-vi-state-id (concat (propertize "VISUAL" 'face 'hi-red-b) ""))
     (setq viper-emacs-state-id (concat (propertize "[EDIT]" 'face 'hi-red-b) ""))
     (setq viper-insert-state-id (concat (propertize "[INSERT]" 'face 'hi-green-b) ""))
     (setq viper-replace-state-id (concat (propertize "[REPLACE]" 'face 'hi-green-b) ""))
     (setq viper-vi-style-in-minibuffer nil)
;;      ;; the property `risky-local-variable' is a security measure for mode line
;;      ;; variables that have properties.
     (put 'viper-mode-string 'risky-local-variable t)
	    (setq-default viper-electric-mode t)))