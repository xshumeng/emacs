;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/highlight") load-path)
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(add-hook 'erlang-mode-hook 'auto-highlight-symbol-mode)

(provide 'init-highlight)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-highlight.el ends here
