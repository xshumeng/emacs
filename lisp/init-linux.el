;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(when window-system
  (let ((monaco-medium "-*-Monaco-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
	(source-code-pro "-*-Source Code Pro-*-normal-normal-*-15-*-*-*-m-0-iso10646-1")
	(noto-sans-mono "-*-Noto Sans Mono-*-normal-normal-*-15-*-*-*-m-0-iso10646-1"))
    (set-face-attribute 'default nil :font source-code-pro)
    ;; 等宽: Source Code Pro 13 + STkaiti 16
    ;; (setq face-font-rescale-alist `(("STkaiti" . ,(/ 16.0 13))))
    (setq face-font-rescale-alist `(("STkaiti" . 1.2)))
    (set-fontset-font t 'han (font-spec :family "STkaiti"))))

(provide 'init-linux)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-linux.el ends here
