require "../cornerstone"

describe "Cornerstone", ->
  it "should provide Core", ->
    assert Core()

  it "should provide Matrix", ->
    assert Matrix()

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
