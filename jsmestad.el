(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/ecb-2.40")

; custom place to save customizations
(setq custom-file "~/.emacs.d/jsmestad/custom.el")

(when (file-exists-p ".passwords") (load ".passwords"))
 
;;(load "jsmestad/lisp")
(load "jsmestad/defuns")
(load "jsmestad/global")
(load "jsmestad/bindings")
(load "jsmestad/modes")
(load "jsmestad/theme")
(load "jsmestad/temp_files")
(load "jsmestad/ecb")
;;(load "defunkt/github")
;;(load "defunkt/git")


(load custom-file)
 
(when (file-exists-p "jsmestad/private") 
  (load "jsmestad/private"))



(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'textile-mode)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)
(vendor 'pabbrev)
(vendor 'mysql)

;; Ruby specific
(vendor 'haml-mode)
(vendor 'sass-mode)