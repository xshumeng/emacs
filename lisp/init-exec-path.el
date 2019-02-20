;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/exec-path") load-path)
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(exec-path-from-shell-setenv "LANG" "")

(provide 'init-exec-path)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-exec-path.el ends here
