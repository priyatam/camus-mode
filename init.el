(package-initialize)

(require 'package)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
;; linux (require 'cask "~/.cask/cask.el")

(cask-initialize)

(load "~/.emacs.d/src/gui.el")
(load "~/.emacs.d/src/files.el")
(load "~/.emacs.d/src/git.el")
(load "~/.emacs.d/src/keybindings.el")
(load "~/.emacs.d/src/markups.el")
(load "~/.emacs.d/src/typography.el")

;;(set-exec-path-from-shell)
(add-to-list 'exec-path "/usr/local/bin")

;; Temporarily reduce gc at startup
(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
  "Initial value of `gc-cons-threshold' at start-up time.")

(setq gc-cons-threshold (* 256 1024 1024))

(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))
