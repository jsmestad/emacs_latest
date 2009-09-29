(add-to-list 'load-path "~/.emacs.d/vendor")
 
; custom place to save customizations
(setq custom-file "~/.emacs.d/jsmestad/custom.el")
(load custom-file)
 
(when (file-exists-p ".passwords") (load ".passwords"))
 
(load "jsmestad/lisp")
(load "jsmestad/global")
(load "jsmestad/defuns")
(load "jsmestad/bindings")
(load "jsmestad/modes")
(load "jsmestad/theme")
(load "jsmestad/temp_files")
;;(load "defunkt/github")
;;(load "defunkt/git")
 
(when (file-exists-p "jsmestad/private") 
  (load "jsmestad/private"))

;; OSX Specific
(vendor 'redo+)
(vendor 'mac-key-mode)

(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'textile-mode)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)

;; Ruby specific
(vendor 'haml-mode)
(vendor 'sass-mode)