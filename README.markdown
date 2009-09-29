(defun kts (emacs config)
  "justin smestad -- justin.smestad@gmail.com"

  (git-clone "git://github.com/jsmestad/emacs.git")
  (ruby "emacs/install.rb")
  (find-file "emacs/local.el")
  (insert '(load "jsmestad"))
  (save-buffer))
