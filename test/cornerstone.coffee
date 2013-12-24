require "../cornerstone"

describe "Cornerstone", ->
  it "should provide Core", ->
    assert Core

  it "should provide Matrix", ->
    assert Matrix

  it "should provide Point", ->
    assert Point

  it "should provide Random", ->
    assert Random

  it "should provide rand", ->
    assert rand

  it "should provide Function#debounce", ->
    assert (->).debounce
