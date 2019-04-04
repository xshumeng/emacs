;;; emacs.d --- Summary:
;;; Commentary:
;;;
;;; Code:

(feature
 (package-path "webmode") 'web-mode
 (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
 (add-to-list 'auto-mode-alist '("\\.xml\\'" . web-mode)))

(provide 'init-webmode)
;;; init-webmode.el ends here
