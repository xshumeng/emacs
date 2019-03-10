;;; url-tools.el --- URL相关操作工具                 -*- lexical-binding: t; -*-

;; Copyright (C) 2019  xueshumeng

;; Author: xueshumeng <xue.shumeng@yahoo.com>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'url-util)

(define-namespace url-tools-

(defun -region-content ()
  "Return the region content."
  (if (use-region-p)
      (buffer-substring-no-properties (region-beginning) (region-end))))

(defun decode-url-echo-area ()
  "Show the decoded url in echo area."
  (interactive)
  (let ((content (-region-content)))
    (message (decode-coding-string (url-unhex-string content) 'utf-8))))
)

(provide 'url-tools)
;;; url-tools.el ends here
