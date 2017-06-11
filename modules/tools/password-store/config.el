;;; tools/password-store/config.el -*- lexical-binding: t; -*-

(def-package! password-store
  :config
  (setq password-store-password-length 12))


(def-package! pass
  :commands pass
  :config
  (set! :evil-state 'pass-mode 'emacs)
  (set! :popup "*Password-Store*" :align 'left :size 32 :select t :autokill t :noesc t)
  (map! :map pass-mode-map
        "j"   #'pass-next-entry
        "k"   #'pass-prev-entry
        "d"   #'pass-kill
        "C-j" #'pass-next-directory
        "C-k" #'pass-next-directory))


(cond ((version< emacs-version "26")
       ;; included with `pass'
       (def-package! auth-password-store
         :demand t
         :config (auth-pass-enable)))

      (t ;; built into Emacs 26
       (require 'auth-store-pass)
       (auth-source-pass-enable)))

