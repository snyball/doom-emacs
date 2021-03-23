;; -*- no-byte-compile: t; -*-
;;; checkers/syntax/packages.el

(package! flycheck :pin "01396a5eff9fa494285e0d3139838231c05e3948")
(package! flycheck-popup-tip :pin "ef86aad907f27ca076859d8d9416f4f7727619c6")
(when (featurep! +childframe)
  (package! flycheck-posframe :pin "8f60c9bf124ab9597d681504a73fdf116a0bde12"))

;; TODO flymake?
