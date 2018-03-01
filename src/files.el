
(require 'helm-config)

;; Encoding -----

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq dired-omit-files "^\\...+$")

(add-hook 'dired-mode-hook
          (lambda ()
            (dired-omit-mode 1)))

;; Ido -----

(global-set-key (kbd "C-x f") 'find-file-in-project)

;; Dired -----

(global-set-key (kbd "C-x C-j") 'dired-jump)
(define-key ctl-x-4-map (kbd "C-j") 'dired-jump-other-window)

;; Settings -----

(global-auto-revert-mode t)

;; Backup -----

(setq backup-directory-alist
      `(("." . ,(expand-file-name "~/emacs.d/backups"))))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/emacs.d/backups") t)))

;; Helm ------

(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-autoresize-mode t)
