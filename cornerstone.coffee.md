Cornerstone
===========

`Cornerstone` is the foundation for complex applications. There is always a
tradeoff between explicit dependencies and a robust standard environment.

Cornerstone is to be used when we want a better environment and don't mind
not explicitly requiring each individual dependency.

Implementation
--------------

Add all of the built in extensions.

    require "extensions"

    {extend, defaults} = require "util"

    Inflector = require("inflector")

Pollute the global environment.

    Model = require "model"

    extend global,
      Bindable: require "bindable"
      Core: Model.Core
      Inflector: Inflector
      defaults: defaults
      extend: extend
      Model: Model

    global.Observable ?= Model.Observable

    Inflector.pollute()
    require("math").pollute()

Add our extra Point extensions

    require "./point"
