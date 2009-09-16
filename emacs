;; Appearance/Behaviour stuff
(setq inhibit-startup-message t)
(setq require-final-newline t)
(setq resize-minibuffer-frame t)
(setq column-number-mode t)
(setq scroll-bar-mode-explicit t)
(set-scroll-bar-mode `right) 


;; Make switching buffers better
(iswitchb-mode 1)

(defun iswitchb-local-keys ()
      (mapc (lambda (K) 
	      (let* ((key (car K)) (fun (cdr K)))
    	        (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
	    '(("<right>" . iswitchb-next-match)
	      ("<left>"  . iswitchb-prev-match)
	      ("<up>"    . ignore             )
	      ("<down>"  . ignore             ))))
    (add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)

(add-to-list 'load-path "~/.emacs.d")

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
(color-theme-initialize)
(require 'zenburn)
(color-theme-zenburn)
