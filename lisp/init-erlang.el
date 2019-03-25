;;; emacs.d --- ERLANG语言配置 Summary:
;;; Commentary:
;;; Code:

(setf erlang-root-dir "/usr/local/Cellar/erlang/21.3")

(push (concat erlang-root-dir "/lib/erlang/lib/tools-3.1/emacs/") load-path)

(setf exec-path (cons (concat erlang-root-dir "/bin") exec-path))

(require 'erlang-start)

(provide 'init-erlang)
;;; init-erlang.el ends here
