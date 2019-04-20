;; .emacs

;; User Details
(setq user-full-name "Reza Jatnika")
(setq user-mail-address "rezajatnika@gmail.com")

;; Package Management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Evil Mode because coming from Vim.
(require 'evil)
(evil-mode 1)

;; Remove annoying scroll bar.
;; (scroll-bar-mode -1)

;; Remove menu and tool bar to.
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Splash Screen
(setq inhibit-splash-screen t
      initial-scratch-message nil)

;; Display settings.
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; Indentation.
(setq tab-width 2
      indent-tabs-mode nil)

;; Backup files.
(setq make-backup-files nil)

;; Column number mode.
(setq make-backup-files nil)

;; Line numbers.
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Autocomplete.
(require 'auto-complete-config)
(ac-config-default)

(require 'lsp-mode)
(add-hook 'go-mode-hook #'lsp)

;; Custom themes.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(customize-set-variable 'frame-background-mode 'light)
(load-theme 'solarized t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(frame-background-mode (quote light))
 '(package-selected-packages
   (quote
    (go-complete go-autocomplete company-go use-package lsp-ui lsp-clangd load-theme-buffer-local go-mode go flymake-cppcheck evil company-lsp ccls auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
