# jaylib-netrepl-demo

Demo of using jaylib with netrepl

## Setup

```
git clone https://github.com/sogaiu/jaylib-netrepl-demo
cd jaylib-netrepl-demo
jpm -l deps
```

## Test

Start program (this starts the netrepl server too):

```
jpm -l janet main.janet
```

A window should show up with a solid background color and an updating
fps value in the top left should appear.

In an editor, open `main.janet` and connect to the netrepl server
at `127.0.0.1:9365` [1].

Evaluate the `(set bg-color ...)` form within the `(comment ...)` form.

If everything went well, the background color should have changed.

## Using Janet's `:redef` Feature

It's also possible to make use of [Janet's `:redef`
feature](https://github.com/janet-lang/janet/pull/898) by starting the
program like this:

```
jpm -l janet -d main.janet
```

As before, a window should show up with a solid background color and
an updating fps value in the top left should appear.

In an editor, open `main.janet` and connect to the netrepl server
at `127.0.0.1:9365` [1].

Evaluate the `(def fps-coor ...)` form within the `(comment ...)`
form.

If everything went well, the position of the fps counter should have
changed.

## Footnotes

[1] Connecting to the netrepl server is editor-specific.  Some options
    include:

   * [a-janet-spork-client](https://github.com/sogaiu/a-janet-spork-client)
   * [conjure](https://github.com/Olical/conjure)
