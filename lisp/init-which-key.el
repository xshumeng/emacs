;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend on (dash with-editor transient lv)
;;; Code:

(push (expand-emacs-dir "packages/which-key") load-path)
(require 'which-key)
(which-key-mode)

(provide 'init-which-key)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-which-key.el ends here
