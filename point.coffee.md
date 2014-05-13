Extend Point With Math Magic
============================

    [
      "abs"
      "ceil"
      "floor"
    ].forEach (method) ->
      Point.prototype[method] = ->
        Point(@x[method](), @y[method]())
