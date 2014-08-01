Cornerstone
===========

`Cornerstone` is the foundation for complex applications. There is always a
tradeoff between explicit dependencies and a robust standard environment.

Cornerstone is to be used when we want a better environment and don't mind
not explicitly requiring each individual dependency.

Require and pollute.

    require "extensions"

    {extend, defaults} = require "util"

    extend global,
      Bindable: require "bindable"
      Core: require "core"
      defaults: defaults
      extend: extend
      Model: require "model"
      Observable: require "observable"

    require("math").pollute()

    require "./point"
