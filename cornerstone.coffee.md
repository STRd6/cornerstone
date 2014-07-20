Cornerstone
===========

Require and pollute.

    require "extensions"

    {extend, defaults} = require "util"

    extend global,
      Core: require "core"
      defaults: defaults
      extend: extend
      Model: require "model"
      Observable: require "observable"

    require("math").pollute()

    require "./point"
