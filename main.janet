(import jaylib :as j)
(import spork/netrepl)

(var bg-color [0 88 0])

(comment

  # evaluate the form below [1] after starting things up and verifying
  # the background color has been set to the `bg-color` specified
  # above
  #
  # [1] i used `ajsc-send-expression-at-point` with point after the
  #     closing delimiter
  (set bg-color [0 0 88])

  )

(defn main
  [& args]
  (def repl-server
    (netrepl/server "127.0.0.1" "9365" (fiber/getenv (fiber/current))))
  (j/init-window 640 480 "")
  (j/set-target-fps 60)
  (while (not (j/window-should-close))
    (ev/sleep 0)
    (j/begin-drawing)
    (j/clear-background bg-color)
    (j/draw-fps 10 10)
    (j/end-drawing))
  (:close repl-server))
