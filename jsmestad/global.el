(setq desktop-save t)

(set-face-background 'region "#444444")

;; Platform -- OSX
;; utf-8 encoding should be used
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil) ; eliminate hard tabs
(setq-default truncate-lines t) ; no word wrapping!

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
(setq mac-emulate-three-button-mouse nil)
(setq transient-mark-mode t)  ;  makes the region act quite like the text "highlight" in many apps.
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection 
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection
(setq-default scroll-conservatively 1)	; Do not scroll dramatically when moving one line at a time!

;; Delete key fix
(global-set-key [kp-delete] 'delete-char)

;; Keyboard Overrides
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)
(define-key text-mode-map (kbd "M-s") 'save-buffer)
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

;; Delete key fix
(global-set-key [kp-delete] 'delete-char)

;; GIT
;; Automatically Revert Buffer (for branch changes)
(global-auto-revert-mode 1)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; make emacs use the clipboard
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
 (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))
 (make-directory autosave-dir t)
 (setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat
       autosave-dir "\\1") t)))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "/tmp/emacs_backups/" (user-login-name) "/"))
  (setq backup-directory-alist (list (cons "." backup-dir)))

;; Default to unified diffs
(setq diff-switches "-u")