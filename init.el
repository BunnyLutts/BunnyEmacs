(use-package evil
  :ensure t

  :init
  (setq-default evil-leader-key "SPC")
  (setq evil-normal-leader-map (make-sparse-keymap))
  (setq files-prefix-map (make-sparse-keymap))

  :bind (:map evil-normal-leader-map
	 ("SPC" . execute-extended-command)
	 ("w" . evil-window-map)
	 :map files-prefix-map
	 ("f" . find-file)
	 ("s" . save-buffer)
	 ("S" . write-file))

  :config
  (evil-mode 1)
  (setq evil-undo-system 'undo-redo)
  (keymap-set evil-normal-state-map evil-leader-key evil-normal-leader-map)
  (keymap-set evil-normal-leader-map "f" (cons "files prefix"  files-prefix-map)))

(use-package vundo
  :ensure t
  :bind)

(use-package evil-escape
  :ensure t
  :config
  (evil-escape-mode 1))

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

(use-package company
  :ensure t
  :hook prog-mode)

(use-package yasnippet
  :ensure t)

(use-package eglot
  :ensure t)

(tool-bar-mode 0)
(menu-bar-mode 0)
(display-line-numbers-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
