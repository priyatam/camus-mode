(package-initialize)

(require 'package)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
;; linux (require 'cask "~/.cask/cask.el")

(cask-initialize)

(load "~/.emacs.d/src/gui.el")
(load "~/.emacs.d/src/files.el")
(load "~/.emacs.d/src/git.el")
(load "~/.emacs.d/src/css.el")
(load "~/.emacs.d/src/keybindings.el")
(load "~/.emacs.d/src/markups.el")
(load "~/.emacs.d/src/typography.el")
(load "~/.emacs.d/src/code.el")

;;(set-exec-path-from-shell)
(add-to-list 'exec-path "/usr/local/bin")

;; Temporarily reduce gc at startup
(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
  "Initial value of `gc-cons-threshold' at start-up time.")

(setq gc-cons-threshold (* 256 1024 1024))

(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
	(rainbow-delimiters yaml-mode writeroom-mode web-mode use-package smart-mode-line paredit multiple-cursors markdown-mode magit inf-clojure helm golden-ratio git-timemachine expand-region exec-path-from-shell emmet-mode cask))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Clear Sans Medium" :height 180 :weight medium :slant normal :width normal)))))
