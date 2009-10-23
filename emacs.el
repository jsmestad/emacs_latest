(defvar *emacs-load-start* (current-time))
(add-to-list 'load-path "~/.emacs.d")

;; You're expected to populate .emacs.d/local.el
;; with your own code. This file is under .gitignore
;; so it won't be version-controlled. The idea is to
;; make this file load other version-controlled files.
(load "loader")

(message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
                             (- (+ hi lo) (+ (first *emacs-load-start*) (second
                             *emacs-load-start*)))));; clojure-mode
(add-to-list 'load-path "/Users/justinsmestad/Documents/Development/src/clojure/clojure-mode")
(require 'clojure-mode)
;; swank-clojure
(add-to-list 'load-path "/Users/justinsmestad/Documents/Development/src/clojure/swank-clojure")
(require 'swank-clojure-autoload)
(swank-clojure-config
(setq swank-clojure-jar-path "/Users/justinsmestad/Documents/Development/src/clojure/clojure/clojure.jar")
(setq swank-clojure-extra-classpaths
(list "/Users/justinsmestad/Documents/Development/src/clojure/clojure-contrib/clojure-contrib.jar")))
;; slime
(eval-after-load "slime"
'(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "/Users/justinsmestad/Documents/Development/src/clojure/slime")
(require 'slime)
(slime-setup)
