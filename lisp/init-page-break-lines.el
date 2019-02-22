;;; emacs.d --- Summary:
;;; Commentary:
;;; Show page break lines
;;; Code:

(push (expand-emacs-dir "packages/page-break-lines") load-path)
(require 'page-break-lines)
(global-page-break-lines-mode)

(provide 'init-page-break-lines)
;;; init-page-break-lines.el ends here
