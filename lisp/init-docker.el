;;; init-docker.el --- Docker模式设置                -*- lexical-binding: t; -*-

;; Copyright (C) 2019  xueshumeng

;; Author: xueshumeng <xue.shumeng@yahoo.com>
;; Keywords:

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

(push (expand-emacs-dir "packages/s.el") load-path)
(push (expand-emacs-dir "packages/dockerfile") load-path)
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'init-docker)
;;; init-docker.el ends here
