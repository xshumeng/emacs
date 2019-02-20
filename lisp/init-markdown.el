;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(push (expand-emacs-dir "packages/markdown-mode") load-path)

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode" "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-command "pandoc --from=markdown --to=html --standalone --mathjax --highlight-style=pygments")

(provide 'init-markdown)
;;; init-markdown.el ends here
;;; Local Variables:
;;; coding: utf-8
;;; End:
