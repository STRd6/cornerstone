Extend Point With Math Magic
============================

Let's add our number extensions to `Point`s.

    [
      "abs"
      "ceil"
      "floor"
    ].forEach (method) ->
      Point.prototype[method] = ->
        Point(@x[method](), @y[method]())
