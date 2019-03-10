;;; emacs.d --- Yaml Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/yaml-mode") load-path)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(provide 'init-yaml)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-yaml.el ends here
