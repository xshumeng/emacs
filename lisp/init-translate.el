;;; emacs.d --- Summary:
;;; Commentary:
;;; Depend for magit
;;; Code:

(push (expand-emacs-dir "packages/youdao-dictionary") load-path)
(require 'youdao-dictionary)
(setq url-automatic-caching t)
(setq youdao-dictionary-search-history-file (expand-emacs-dir ".automake/.youdao"))
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)

;; (defun search-word-from-history-file (word)
;;   "Search `WORD' from history file."
;;   (let ((regex (concat "{.*\"query\":\"" word "\".*}")))
;;     (with-temp-buffer
;;       (insert-file-contents "~/lesson001002.info")
;;       (goto-char (point-min))
;;       (if (re-search-forward regex nil t) (match-string 0) nil))))


;; (youdao-dictionary--request "excuse")

;; (-request "excuse")


;; (setq search-history-file "~/lesson001002.info")

;; (defun request (word)
;;   "Request WORD, return JSON as an alist if successes."
;;   (when (and search-history-file (file-writable-p search-history-file))
;;     ;; Save searching history
;;     ;; (append-to-file (concat word "\n") nil search-history-file)
;;     (let ((history (search-word-from-history-file word)))
;;       (if history (json-read-from-string history)
;;         (let (json)
;;           (with-current-buffer
;;               (url-retrieve-synchronously (-format-request-url word))
;;             (set-buffer-multibyte t)
;;             (goto-char (point-min))
;;             (when (not (string-match "200 OK" (buffer-string)))
;;               (error "Problem connecting to the server"))
;;             (re-search-forward "^$" nil 'move)
;;             (setq json (json-read-from-string
;;                         (buffer-substring-no-properties (point) (point-max))))
;;             (kill-buffer (current-buffer)))
;;           json)))))

;; (request "excused")

(provide 'init-translate)
;;; Local Variables:
;;; coding: utf-8
;;; End:
;;; init-translate.el ends here
