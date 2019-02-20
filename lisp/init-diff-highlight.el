;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend on (dash with-editor transient lv)
;;; Code:

(push (expand-emacs-dir "packages/diff-highlight") load-path)

(require 'diff-hl)

(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(add-hook 'after-init-hook 'global-diff-hl-mode)

(provide 'init-diff-highlight)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-diff-highlight.el ends here
