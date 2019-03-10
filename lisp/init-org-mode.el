;;; package --- Summary:
;;; Commentary:
;;; Code:


(push (expand-emacs-dir "packages/org-bullets") load-path)
(require 'org-bullets)
;; * 乾一 * 坤二 * 离三 * 震四 * 巽五 * 坎六 * 艮七 * 坤八
(custom-set-variables
 '(org-bullets-bullet-list '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷")))
(add-hook 'org-mode-hook 'org-bullets-mode)

;;; 摘抄自 https://coldnew.github.io/a1ed40e3/
(defadvice org-html-paragraph (before org-html-paragraph-advice (paragraph contents info) activate)
  "Join consecutive Chinese lines into a single long line without unwanted space when exporting `org-mode' to html."
  (let* ((origin-contents (ad-get-arg 1))
         (fix-regexp "[[:multibyte:]]")
         (fixed-contents
          (replace-regexp-in-string
           (concat
            "\\(" fix-regexp "\\) *\n *\\(" fix-regexp "\\)") "\\1\\2" origin-contents)))
    (ad-set-arg 1 fixed-contents)))

;; 改变ORG导出时的下标标注方式：AAA_{下标}，AAA_普通文字将不再转义为下标
(setq org-export-with-sub-superscripts (quote {}))

;; ORG MODE 源码操作设置
(defun org-insert-src-block ()
  "Insert a `SRC-CODE-TYPE' type source code block in `org-mode'."
  (interactive)
  (let* ((src-code-types
          '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
            "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
            "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
            "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby"
            "scheme" "sqlite" "lua" "sed" "fortran" "erlang"))
         (selected-code-type (ido-completing-read "Source code type: " src-code-types)))
    (progn
      (newline-and-indent)
      (insert (format "#+BEGIN_SRC %s\n" selected-code-type))
      (newline-and-indent)
      (insert "#+END_SRC\n")
      (previous-line 2)
      (org-edit-src-code))))

(add-hook 'org-mode-hook '(lambda ()
                            (local-set-key (kbd "C-<tab>") 'yas/expand-from-trigger-key)
                            ;; keybinding for editing source code blocks
                            (local-set-key (kbd "C-c s e") 'org-edit-src-code)
                            ;; keybinding for inserting code blocks
                            (local-set-key (kbd "C-c s i") 'org-insert-src-block)
                            ;; (auto-fill-mode)
                            ))
(setf org-src-fontify-natively t) ; 高亮ORG代码块中的代码

(with-eval-after-load 'org
  ;; Org mode agenda setting
  (add-to-list 'org-agenda-files "~/Data/geting-things-done")
  (define-key global-map "\C-cc" 'org-capture)
  (setq org-image-actual-width 500)
  )

(setf truncate-lines nil)
(provide 'init-org-mode)
;;; init-org-mode.el ends here
