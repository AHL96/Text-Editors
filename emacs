
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (zenburn)))
 '(evil nil)
 '(linum-relative nil)
 '(package-selected-packages
   (quote
    (linum-relative zenburn-theme smooth-scrolling smooth-scroll neotree helm flycheck electric-spacing ac-emmet)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smooth-scroll nil)
 '(smooth-scrolling nil)
 '(speedbar-show-unknown-files t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(ac-config-default)
(electric-pair-mode 1)

(add-to-list 'default-frame-alist '(font . "Source Code Pro 13"))
(set-face-attribute 'default t :font "Source Code Pro 13")

(setq ring-bell-function 'ignore)

(global-set-key (kbd "M-x") 'helm-M-x)

(put 'downcase-region 'disabled nil)

					; (setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(linum-relative-global-mode 1)
(evil-mode 1)

(global-flycheck-mode 1)
(global-hl-line-mode 1)

(ido-mode t)

(speedbar 1)

(setq-default
 whitespace-line-column 80
 whitespace-style       '(face lines-tail))
(add-hook 'prog-mode-hook #'whitespace-mode)

(electric-spacing-mode 1)

(smooth-scroll-mode 1)

(smooth-scrolling-mode 1)

(provide '.emacs)
;;; .emacs ends here
