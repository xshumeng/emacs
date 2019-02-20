;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend on (dash with-editor transient lv)
;;; Code:

(push (expand-emacs-dir "packages/magit/lisp") load-path)
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(setf magit-repository-directories '(("~/Codes" . 2) ("~/.emacs.d" . 0)))

(provide 'init-magit)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-magit.el ends here
