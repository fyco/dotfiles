(evil-leader/set-key
  "$"          'nlinum-mode
  "qq"         'kill-this-buffer
  "qw"         'evil-window-delete
  "qo"         'my-kill-other-buffer
  "Q"          'kill-buffer-and-window
  "e"          'pp-eval-last-sexp
  "h"          'dired-jump
  ">"          'find-file-at-point
  "B"          'ibuffer
  "\\"         'split-window-horizontally
  "-"          'split-window-vertically
  "e"          'pp-eval-last-sexp
  "TAB"        'my-hop-around-buffers
  "RET"        'my-spawn-terminal-here
  ","          'other-window
  "w"          'save-buffer
  "`"          'visit-term-buffer
  "gs"         'magit-status
  "gl"         'magit-log
  "gd"         'magit-diff
  "b"          'switch-to-buffer
  "B"          'ibuffer
)

(evil-leader/set-key-for-mode 'git-commit-mode "qq" 'git-commit-abort)

(evil-leader/set-key-for-mode 'emacs-lisp-mode "." 'elisp-slime-nav-find-elisp-thing-at-point)

(provide 'my-leader-keys)
