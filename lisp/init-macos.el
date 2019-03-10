;;; emacs.d --- Summary:
;;; Commentary:
;;; Code:

(when (window-system)
  (toggle-frame-fullscreen)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  (setq ns-function-modifier 'hyper))

(when window-system
  (let ((monaco-font "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")
	(sourcode-font "-apple-Source Code Pro-*-normal-normal-*-13-*-*-*-m-0-iso10646-1")
	(firacode-font "-*-Fira Code-*-*-*-*-13-*-*-*-*-*-*-*"))
    (set-face-attribute 'default nil :font firacode-font)))

;; 等宽: Source Code Pro 13 + STkaiti 16
;; (setq face-font-rescale-alist `(("STkaiti" . ,(/ 16.0 13))))
;; (set-fontset-font t 'han (font-spec :family "STkaiti"))

(provide 'init-macos)
;;; init-macos.el ends here
