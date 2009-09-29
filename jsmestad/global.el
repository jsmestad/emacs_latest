;; Platform -- OSX
;; utf-8 encoding should be used
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Move Meta to option key in OSX
(vendor 'redo+)
(vendor 'mac-key-mode)
(mac-key-mode 1)
(setq mac-option-modifier 'meta)

;; Work around a bug on OS X where system-name is FQDN
(if (eq system-type 'darwin)
    (setq system-name (car (split-string system-name "\\."))))

;; Mouse - make it function like OSX apps
(mouse-wheel-mode t)
(setq transient-mark-mode t)  ;  makes the region act quite like the text "highlight" in many apps.
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection 
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection

;; Delete key fix
(global-set-key [kp-delete] 'delete-char)

;; Keyboard Overrides
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)
(define-key text-mode-map (kbd "M-s") 'save-buffer)
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

;; GIT
;; Automatically Revert Buffer (for branch changes)
(global-auto-revert-mode 1)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; make emacs use the clipboard
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)