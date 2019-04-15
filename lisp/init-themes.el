;;; init-themes.el --- 初始化Emacs主题设置           -*- lexical-binding: t; -*-

;; Copyright (C) 2019  xueshumeng

;; Author: xueshumeng <xue.shumeng@yahoo.com>
;; Keywords: themes

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

(push (expand-emacs-dir "packages/themes/dracula") custom-theme-load-path)
(push (expand-emacs-dir "packages/themes/solarized") load-path)
(push (expand-emacs-dir "packages/themes/solarized") custom-theme-load-path)
(push (expand-emacs-dir "packages/themes/zenburn") custom-theme-load-path)
(push (expand-emacs-dir "packages/themes/gruvbox") load-path)
(feature (package-path "themes/autothemer") 'autothemer)
(feature (package-path "themes/gruvbox") 'gruvbox)


;; Beacon — Never lose your cursor again
(feature (package-path "beacon") 'beacon (beacon-mode 1))

(feature (package-path "indent-guides") 'highlight-indent-guides
	 (setf highlight-indent-guides-method 'character))

(provide 'init-themes)
;;; init-themes.el ends here
;;; Local Variables:
;;; coding: utf-8
;;; End:
