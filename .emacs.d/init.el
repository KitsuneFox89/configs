(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")
; No startup screen
(custom-set-variables '(inhibit-startup-screen t))

(add-to-list 'load-path "~/.emacs.d/")

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; Load color theme
(load-theme 'zenburn t)

(tool-bar-mode -1)
(auto-compression-mode 1)

; No tabs
(setq-default indent-tabs-mode nil)

; Set C-like indentation style
( setq c-default-style "linux"
       c-basic-offset 4 )

; Enable highlighting for CUDA
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu'" . cuda-mode))

; Auto complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)


; Use C++ mode for *.h
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

; Clang C/C++ auto-complete
(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/emacs-clang-complete-async")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(my-ac-config)
