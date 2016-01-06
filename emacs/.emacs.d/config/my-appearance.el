(setq sml/no-confirm-load-theme t)

(use-package zenburn-theme
   :ensure zenburn-theme
   :config
   (progn
     (unless noninteractive
     (load-theme 'zenburn t))))

(global-hl-line-mode t)
(set-face-background 'hl-line "#3e4446")

;; Show parentheses
(show-paren-mode 1)

;; highlight entire expression when matching paren is not visible;
;; otherwise just highlight matching paren
(setq show-paren-style 'mixed)

(setq whitespace-style '(trailing))
(global-whitespace-mode 1)

(use-package smart-mode-line
  :ensure smart-mode-line
  :config
  (progn
    (setq sml/theme 'dark)
    (setq sml/mode-width 30)
    (sml/setup)
    ))

(provide 'my-appearance)
