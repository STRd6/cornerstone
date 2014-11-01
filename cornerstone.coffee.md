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
    Q = require "q"

Pollute the global environment.

    extend global,
      Bindable: require "bindable"
      Core: require "core"
      Deferred: Q.defer
      Inflector: Inflector
      defaults: defaults
      extend: extend
      Model: require "model"
      Observable: require "observable"
      Q: Q

    Inflector.pollute()
    require("math").pollute()

Add our extra Point extensions

    require "./point"
