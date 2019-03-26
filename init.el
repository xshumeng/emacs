;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-utils)

(when-macos (require 'init-macos))

(when-macos (require 'init-exec-path))

(when-linux (require 'init-linux))

(require 'init-edit)

(require 'init-swiper)

(require 'init-company)

(require 'init-highlight)

(require 'init-dash)			; depend

(require 'init-with-editor)		; depend

(require 'init-transient)		; depend

(require 'init-hydra)			; depend

(require 'init-magit)

(require 'init-diff-highlight)

(require 'init-projectile)

(require 'init-which-key)

(require 'init-rectangle)

(require 'init-undo-tree)

(require 'init-switch-window)

(require 'init-snippet)

(require 'init-mode-line)

(require 'init-markdown)

(require 'init-org-mode)

(require 'init-chinese-word-at-point)	; depend

(require 'init-names)			; depend

(require 'init-postip)			; depend

(require 'init-popup)			; depend

(require 'init-translate)

(require 'init-erlang)

(require 'init-themes)

(require 'init-docker)

(require 'init-page-break-lines)

(require 'init-yaml)

(require 'url-tools)

(require 'init-latex)

(require 'init-lisp)

;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init.el ends here
