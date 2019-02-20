;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend for magit
;;; Code:

(push (expand-emacs-dir "packages/transient/lisp") load-path)

(custom-set-default
 'transient-history-file (expand-emacs-dir ".automake/transient/history.el"))

(provide 'init-transient)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-transient.el ends here
