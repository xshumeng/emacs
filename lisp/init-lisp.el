;;; emacs.d --- Summary:
;;; Commentary:
;;;
;;; Code:

(let ((sbcl-path (shell-command-to-string "which sbcl")))
  (when (not (string= sbcl-path ""))
    (push (expand-emacs-dir "packages/slime") load-path)
    (require 'slime-autoloads)
    ;; (slime-setup)
    (setf inferior-lisp-program sbcl-path)
    (setf slime-contribs '(slime-fancy))))

(provide 'init-lisp)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-lisp.el ends here
