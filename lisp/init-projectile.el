;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend on (dash with-editor transient lv)
;;; Code:

(feature
 (package-path "projectile")
 'projectile
 (push (expand-emacs-dir "packages/projectile") load-path)
 (custom-set-variables '(projectile-known-projects-file (expand-emacs-dir ".automake/proj-bookmarks.eld")))
 (projectile-mode +1)
 (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(feature
 (package-path "counsel-projectile")
 'counsel-projectile (counsel-projectile-mode))

(provide 'init-projectile)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-projectile.el ends here
