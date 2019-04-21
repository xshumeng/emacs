;;; emacs.d --- Lua Settings                -*- lexical-binding: t; -*-
;;; Author: xueshumeng <xue.shumeng@yahoo.com>
;;; Commentary:
;;; Code:

(feature (package-path "lua-mode") 'lua-mode
	 (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
	 (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
	 (add-to-list 'interpreter-mode-alist '("lua" . lua-mode)))

(provide 'init-lua)
;;; init-lua.el ends here
