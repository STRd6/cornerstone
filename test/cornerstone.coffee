require "../cornerstone"

describe "Cornerstone", ->
  it "should provide Core", ->
    assert Core

  it "should provide Matrix", ->
    assert Matrix

  it "should provide Point", ->
    assert Point

  it "should have Point::floor", ->
    assert.equal Point(0.9, 0.9).floor().x, 0

  it "should provide Random", ->
    assert Random

  it "should provide rand", ->
    assert rand

  it "should provide Function#debounce", ->
    assert (->).debounce
