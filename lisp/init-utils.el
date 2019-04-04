;;; package --- Summary:
;;; Commentary:
;;; Code:

(defmacro when-macos (&rest body)
  "When the system type is `darwin' then eval `BODY' form."
  `(when (equal system-type 'darwin) ,@body))

(defmacro when-linux (&rest body)
  "When the system type is `gnu/linux' then eval `BODY' form."
  `(when (equal system-type 'gnu/linux) ,@body))

;; (defmacro expand-emacs-dir (path)
;;   "Add `PATH' to the absolute directory of user's `emacs'."
;;   `(expand-file-name ,path user-emacs-directory))

(defmacro expand-emacs-dir (path)
  "Add `PATH' to the absolute directory of user's `emacs'."
  `(locate-user-emacs-file (convert-standard-filename ,path)))

(defmacro package-path (package)
  "Expand `PACKAGE''s path."
  `(locate-user-emacs-file (convert-standard-filename (concat "packages/" ,package))))

(defmacro add-custom-theme (path)
  "Load theme form `PATH'."
  `(add-to-list 'custom-theme-load-path ,path))

(defmacro add-auto-mode-alist (regex mode)
  "Add `REGEX' to `MODE' auto mode alist."
  `(add-to-list 'auto-mode-alist '(,regex . ,mode)))

;; (defun feature (pkg-name &optional min-version no-refresh)
;;   "安装插件`PKG-NAME'，可选参数`MIN-VERSION'和`NO-REFRESH'."
;;   (if (package-installed-p pkg-name min-version)
;;       t
;;     (if (or (assoc pkg-name package-archive-contents) no-refresh)
;; 	    (if (boundp 'package-selected-packages)
;; 	        ;; Record this as a package the user installed explicitly
;; 	        (package-install pkg-name nil)
;; 	      (package-install pkg-name))
;;       (progn
;; 	    (package-refresh-contents)
;; 	    (feature pkg-name min-version t)))))
(defmacro feature (load-path feature &rest body)
  "Load `FEATURE' form `LOAD-PATH'."
  `(let ((path ,load-path))
     (when (file-directory-p path)
       (push path load-path)
       (when (require ,feature (symbol-name ,feature) t)
	 ,@body))))

(if (fboundp 'with-eval-after-load)
    (defalias 'after-load 'with-eval-after-load)
  (defmacro after-load (feature &rest body)
    "After FEATURE is loaded, evaluate BODY."
    (declare (indent defun))
    `(eval-after-load ,feature
       '(progn ,@body))))

(defvar current-date-time-format "%a %b %d %H:%M:%S %Z %Y"
  "*Format for \\[insert-current-date-time] (c.f. 'format-time-string').")

(defvar current-time-format "%a %H:%M:%S"
  "*Format for \\[insert-current-time] (c.f. 'format-time-string').")

(defun insert-current-date-time ()
  "Insert the current datetime according to `current-date-time-format'."
       (interactive "*")
       (insert (format-time-string current-date-time-format (current-time))))

(defun insert-current-time ()
  "Insert the current time according to `current-time-format'."
       (interactive "*")
       (insert (format-time-string current-time-format (current-time))))

(defun kill-all-buffer ()
  "Kill all buffer."
  (interactive)
  (dolist (buffer (buffer-list)) (kill-buffer buffer)))

(defun kill-other-buffer ()
  "Close all of other buffer."
  (interactive)
  (dolist (buffer (delq (current-buffer) (buffer-list))) (kill-buffer buffer)))

(provide 'init-utils)
;;; init-utils.el ends here
