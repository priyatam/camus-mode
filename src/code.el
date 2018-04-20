
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)

;; clojure repl
(setf inf-clojure-tools-deps-cmd '("localhost" . 5555))

;; lumo repl
(setq inf-clojure-repl-use-same-window nil)
(setq inf-clojure-generic-cmd '("localhost" 6666))
