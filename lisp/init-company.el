;;; emacs.d --- 补全工具配置 Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/company-mode") load-path)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'completion-styles 'initials t)
(global-set-key (kbd "M-/") 'company-complete)

(provide 'init-company)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-company.el ends here
