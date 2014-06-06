
;;emacs参数
;; -nw 不使用图形界面 -no-window
;; -q  不加载配置文件
;; --debug-init

;;;; 添加Emacs搜索路径
(add-to-list 'load-path "~/_emacs")
(add-to-list 'load-path "~/install/ecb-2.40")
(add-to-list 'load-path "~/_emacs/codepilot")
(add-to-list 'load-path "~/_emacs/emacs-eclim")
(add-to-list 'load-path "~/_emacs/icicles")
(add-to-list 'load-path "~/_emacs/gnuserv")
(add-to-list 'load-path "~/.emacs.d")


(load "cedet1.1-settings.el")
(setq stack-trace-on-error t)

;;模板功能
(add-to-list 'load-path "~/install/yasnippet-0.6.1c")
;;自动补全
(add-to-list 'load-path "~/install/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/install/auto-complete-1.3.1/dict")
(ac-config-default)

;;;;读取脚本
(load "base.el")
(load "cyexpand.el")
(load "cykbd.el")
(load "addon.el")

;; ;;为了编程的配置
(load "cycode.el")

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(load "projects.el")
(desktop-save-mode 1)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cc-search-directories (quote ("." "/usr/include" "/usr/local/include/*" "/usr/lib/syslinux/com32/include" "/usr/lib/gcc/x86_64-linux-gnu/4.6/include" "/usr/lib/gcc/x86_64-linux-gnu/4.6/include-fixed/" "/usr/include/x86_64-linux-gnu/" "/usr/include/c++/4.6/" "/usr/include/c++/4.6/x86_64-linux-gnu/" "/usr/include/c++/4.6/backward/" "/usr/lib/syslinux/com32/include/")))
 '(column-number-mode t)
 '(delete-selection-mode nil)
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(global-semantic-tag-folding-mode t nil (semantic-util-modes))
 '(mouse-1-click-in-non-selected-windows t)
 '(mouse-drag-copy-region t)
 '(mouse-yank-at-point t)
 '(save-place t nil (saveplace))
 '(scroll-bar-mode (quote right))
 '(semantic-idle-scheduler-idle-time 3)
 '(semantic-self-insert-show-completion-function (lambda nil (semantic-ia-complete-symbol-menu (point))))
 '(show-paren-mode t)
 '(transient-mark-mode t))


(require 'ggtags)
(require 'sdcv)

(ansi-color-for-comint-mode-on)

(set-default-font "-misc-fixed-medium-r-normal--8-18-75-75-c-100-koi8-r")
(set-fontset-font "fontset-default" 'han (font-spec :family="WenQuanYi Micro Hei" :size 8))

;; (create-fontset-from-fontset-spec (concat "-unknown-DejaVu Sans Mono-*-*-*-*-18-*-*-*-*-*-" "fontset-my" ",ascii:" "-misc-fixed-medi-um-r-normal--*-*-*-*-*-100-koi8-r"))

;; (set-default-font "-unknown-DejaVu Sans Mono-*-*-*-*-18-*-*-*-*-*-fontset-my") ;

;; (set-fontset-font (frame-parameter nil 'font)
;;                       'han
;;                       (font-spec :family="WenQuanYi Zen Hei"
;;                                  :size 18
;; 								 :weight="bold"))

(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)


(require 'cmake-mode)
(setq auto-mode-alist
(append '(("CMakeLists\\.txt\\'" . cmake-mode)
("\\.cmake\\'" . cmake-mode))
auto-mode-alist))

(load "graphviz-dot-mode.el") 

(setq graphviz-dot-mode-syntax-table (syntax-table)) 
