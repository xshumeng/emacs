;;; emacs.d --- 补全工具配置 Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/company-mode") load-path)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'completion-styles 'initials t)
(global-set-key (kbd "M-/") 'company-complete)

;; Suspend page-break-lines-mode while company menu is active
;; (see https://github.com/company-mode/company-mode/issues/416)
(after-load 'company
  (after-load 'page-break-lines
    (defvar-local page-break-lines-on-p nil)

    (defun page-break-lines-disable (&rest ignore)
      (when (setq page-break-lines-on-p (bound-and-true-p page-break-lines-mode))
        (page-break-lines-mode -1)))

    (defun page-break-lines-maybe-reenable (&rest ignore)
      (when page-break-lines-on-p
        (page-break-lines-mode 1)))

    (add-hook 'company-completion-started-hook 'page-break-lines-disable)
    (add-hook 'company-completion-finished-hook 'page-break-lines-maybe-reenable)
    (add-hook 'company-completion-cancelled-hook 'page-break-lines-maybe-reenable)))

(provide 'init-company)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-company.el ends here
