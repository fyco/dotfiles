; These and other configs shamelessly stolen from
; Nathan Typanski's emacs config while I get this
; thing on its feet:
;
; https://github.com/nathantypanski/emacs.d
;

(defun visit-term-buffer ()
  "Create or visit a terminal buffer."
  (interactive)
  (if (not (get-buffer "*ansi-term*"))
      (progn
        (split-window-sensibly (selected-window))
        (other-window 1)
        (ansi-term (getenv "SHELL")))
    (switch-to-buffer-other-window "*ansi-term*")))

(provide 'my-term)
