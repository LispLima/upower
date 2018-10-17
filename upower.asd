(defsystem "upower"
  :author "Lucas <lucashpandolfo@gmail.com>"
  :depends-on ("dbus")
  :serial t
  :components ((:file "packages")
               (:file "upower")))

(defsystem "upower/stumpwm-upower"
  :depends-on ("upower"
               "stumpwm")
  :pathname "stumpwm/"
  :components ((:file "upower-manager")))
