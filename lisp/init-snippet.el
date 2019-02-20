;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend for magit
;;; Code:

(push (expand-emacs-dir "packages/yasnippet") load-path)
(require 'yasnippet)
(yas-global-mode 1)
(setf yas-snippet-dirs (list (expand-emacs-dir ".automake/snippets")))
(push (expand-emacs-dir "packages/yasnippet-snippets") load-path)
(require 'yasnippet-snippets)
(when (auto-insert-mode)
    (defun autoinsert-yas-expand()
      "Replace text in yasnippet template."
      (yas/expand-snippet (buffer-string) (point-min) (point-max)))
    (setq auto-insert-query nil)
    (setf auto-insert-directory (expand-emacs-dir "templates"))
    (define-auto-insert "\\.org\\'" ["orgmode.temp" autoinsert-yas-expand])
    (define-auto-insert "\\.tex\\'" ["latex.temp" autoinsert-yas-expand])
    (define-auto-insert "\\.\\(html\\|htm\\)\\'" ["html.temp" autoinsert-yas-expand])
    (define-auto-insert "\\.java\\'" ["java.temp" autoinsert-yas-expand])
    (define-auto-insert "\\.p\\(er\\)?l\\'" ["perl.temp" autoinsert-yas-expand]))

(provide 'init-snippet)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-snippet.el ends here
