(defcommand scrot () ()                                                                                                                               
   (run-shell-command "scrot"))  
;;(notifications-add "StumpWM: scrot, cheese!")
;;(defcommand restartz () ()
 ;; (load "/home/simon/.stumpwmrc"))

(define-key *top-map* (kbd "M-Home") "exec setxkbmap se")
(define-key *top-map* (kbd "M-End") "exec setxkbmap dvorak se")

;; används genom (read-file "fil.homofil")
(defun read-file (file) (with-open-file (stream file) (read-line stream)))

;;(run-shell-command "mpd")
(run-shell-command "sh /home/simon/bin/ip.sh > /home/simon/.inet")

;; Färger o så 
(set-focus-color "SteelBlue")
(set-unfocus-color "gray13")  
(set-fg-color (colour :ypnosecy))
(set-bg-color (colour :ypnose))
(set-border-color (colour :ypnose))
(set-msg-border-width 1)
(message "Mina modz laddad och klar")

;; döda notification-daemon, starta dunst
(run-shell-command "killall -9 /usr/libexec/notification-daemon")
(run-shell-command "dunst")


;; Härifrån är det ett försök till andra färger.
;; Update colors
(setf *bright-colors* nil
      *colors* (mapcar #'colour '(:ypnosecy :ypnosebl :green :yellow :blue :ypnosecy
:cyan :base2 :base03 :orange))
		*mode-line-background-color* (colour :ypnose)
                *mode-line-foreground-color* (colour :ypnosebl)
                *mode-line-border-color* (colour :ypnose))
(mapcar #'update-color-map *screen-list*)

;;(set-focus-color (colour :base02))
;;(set-unfocus-color (colour :base03))
;;(set-border-color (colour :base03))
;;(set-bg-color (colour :pnevma))
;;(set-fg-color (colour :base02))

;;(setf *mode-line-background-color* "black"
;;      *mode-line-foreground-color* "gray50"
;;      *mode-line-border-color* "gray10"
;;      *mode-line-timeout* 1)

