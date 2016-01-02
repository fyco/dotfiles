(eval-after-load 'ibuffer
  '(progn
      (evil-set-initial-state 'ibuffer-mode 'normal)
      (evil-define-key 'normal ibuffer-mode-map
        (kbd "J") 'ibuffer-jump-to-buffer
        (kbd "j") 'evil-next-line
        (kbd "k") 'evil-previous-line
        (kbd "l") 'ibuffer-visit-buffer
	(kbd "v") 'ibuffer-toggle-marks
      )
   )
)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'my-ibuffer)
