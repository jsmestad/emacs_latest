(vendor 'moz)
(vendor 'espresso)

;; taken from http://github.com/technomancy/starter-kit-js.el
(autoload 'espresso-mode "espresso" "Start espresso-mode" t)

(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . espresso-mode))
(add-hook 'espresso-mode-hook 'moz-minor-mode)
;; (add-hook 'espresso-mode-hook 'esk-paredit-nonlisp)
(add-hook 'espresso-mode-hook 'run-coding-hook)
(add-hook 'espresso-mode-hook 'idle-highlight)
(setq espresso-indent-level 2)
(setq espresso-auto-indent-flag nil)

(eval-after-load 'espresso
  '(progn 
          
          ;; fixes problem with pretty function font-lock
          
          (font-lock-add-keywords 'espresso-mode
                        '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\):"
                           1 font-lock-warning-face t)))
          (font-lock-add-keywords
           'espresso-mode `(("\\(function *\\)("
                             (0 (progn (compose-region (match-beginning 1)
                                                       (match-end 1) "ƒ")
                                       nil)))))))
