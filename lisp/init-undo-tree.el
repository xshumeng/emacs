;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/undo-tree") load-path)
(require 'undo-tree)
(global-undo-tree-mode)

(provide 'init-undo-tree)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-undo-tree.el ends here
