;; Appearance/Behaviour stuff
(setq inhibit-startup-message t)
(setq visible-bell t)
(setq require-final-newline t)
(setq resize-minibuffer-frame t)
(setq column-number-mode t)

;; Python Mode
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

(setq python-mode-hook
      '(lambda () (progn
                    (add-hook 'write-file-hooks 'untabify-buffer)
                    (set-variable 'py-indent-offset 4)
                    (set-variable 'py-smart-indentation t)
                    (set-variable 'indent-tabs-mode t) )))


;; PKGBUILD Mode
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))

(require 'color-theme)

