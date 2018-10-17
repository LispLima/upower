# UPower: UPower bindings for common lisp

On top of the bindings we provide a StumpWM module to interact with UPower.

## Module setup

Copy or symlink the stumpwm/upower-manager.lisp over to your stumpwm plugins
directory and add the following code to your .stumpwmrc file

```lisp
(load-module "upower/stumpwm-upower")

;;Handy commands
(stumpwm:defcommand launch-upower-manager () ()
  "Launch (or relaunch) upower manager"
  (stumpwm-upower:upower-manager-launch))

(stumpwm:defcommand suspend () ()
  "Suspend via UPower"
  (stumpwm-upower:suspend))

(stumpwm:defcommand hibernate () ()
  "Hibernate via UPower"
  (stumpwm-upower:hibernate))

;; Launch at init
(launch-upower-manager)
```

Provides a battery formatter (%b).

## References

https://upower.freedesktop.org/docs/ref-dbus.html
