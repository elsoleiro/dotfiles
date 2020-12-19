; view
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(set-fringe-mode 0)
(add-hook 'org-mode-hook (lambda () (linum-mode 0)))


; set default font
(set-face-attribute 'default nil
		    :family "Source Code Pro"
		    :height 90
		    :weight 'normal
		    :width 'normal)


; themes
(load-theme 'adwaita)

; packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(require 'doom-themes)
(load-theme `doom-spacegrey t)
(require 'evil)
(evil-mode 1)
(require 'all-the-icons)

(use-package dashboard
  :ensure t
  :init
  (progn
    (setq dashboard-items '((recents . 1)))
    (setq dashboard-show-shortcuts t)
    (setq dashboard-center-content t)
    (setq dashboard-banner-logo-title "Hello Elias")
    (setq dashboard-set-file-icons t)
    (setq dashboard-set-heading-icons t)
    (setq dashboard-set-footer nil)
    (setq dashboard-set-init-info nil)
    (setq dashboard-startup-banner "~/downloads/pi.png"))
    

  :config
  (dashboard-setup-startup-hook))
