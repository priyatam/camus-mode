
(require 'writeroom-mode)
(require 'markdown-mode)

(load "~/.emacs.d/lib/typopunct.el")
(require 'typopunct)

;; Smart line -----

(setq sml/no-confirm-load-theme t)
(sml/setup)

;; Fonts -----

(global-prettify-symbols-mode 1)

(custom-set-faces
 '(default ((t (:family "Source Code Pro Light"
						:height 200
						:weight medium
						:slant normal
						:width normal)))))

(setq-default line-spacing 15)

;; Writeroom -----

(add-hook 'writeroom-mode
   (define-key writeroom-mode-map (kbd "s-?") nil)
   (define-key writeroom-mode-map (kbd "C-c w") #'writeroom-toggle-mode-line))

(setq writeroom-width 64)
(setq-default fill-column 64)

(global-set-key (kbd "C-x C-w") 'writeroom-mode)
(global-writeroom-mode)
(setq writeroom-major-modes '(text-mode clojure-mode clojurescript-mode))

;; Typopunct

(defun init()
  (require 'typopunct)
  (typopunct-change-language 'english)
  (typopunct-mode 1))

(add-hook 'markdown-mode-hook 'init)
