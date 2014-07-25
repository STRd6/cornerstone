require "../cornerstone"

describe "Cornerstone", ->
  it "should provide Bindable", ->
    assert Bindable()

  it "should provide Core", ->
    assert Core()

  it "should provide Matrix", ->
    assert Matrix()

  it "should provide Model", ->
    assert Model()

  it "should provide Observable", ->
    assert Observable()

  describe "Point", ->

    it "should provide Point", ->
      assert Point()

    [
      "abs"
      "ceil"
      "floor"
    ].forEach (method) ->
      it "should have Point::#{method}", ->
        assert Point()[method]

  it "should provide Random", ->
    assert Random

  it "should provide rand", ->
    assert rand

  it "should provide Function#debounce", ->
    assert (->).debounce

  it "should provide extend", ->
    assert extend

  it "should provied defaults", ->
    assert defaults
