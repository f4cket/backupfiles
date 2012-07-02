(defvar *my-emms-bindings*
      '(("n" "emms-next")
        ("p" "emms-previous")
        ("s" "emms-stop")
        ;;("C-m" "emms-play-directory")
        ;;("k" "kill-buffer")
        ;;("p" "emms-play-dired")))

    (stumpwm:define-key stumpwm:*top-map* (stumpwm:kbd "C-m")
      (let ((m (stumpwm:make-sparse-keymap)))
        (map nil #'(lambda (x)
                     (stumpwm:define-key m (stumpwm:kbd (car x))
                       (concat "exec emacsclient -e '(" (cadr x) ")'")))
             *my-emms-bindings*)
        m))
    
