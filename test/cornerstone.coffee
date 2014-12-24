require "../cornerstone"

describe "Cornerstone", ->
  it "should provide Bindable", ->
    assert Bindable()

  it "should provide Core", ->
    assert Core()

  it "should provide Deferred", (done) ->
    deferred = Deferred()

    promise = deferred.promise

    promise.then done

    deferred.fulfill()

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

  it "should provide Q", ->
    assert Q

  it "should provide Random", ->
    assert Random

  it "should provide rand", ->
    assert rand

  it "should provide Size", ->
    assert Size

  it "should provide Function#debounce", ->
    assert (->).debounce

  it "should provide extend", ->
    assert extend

  it "should provied defaults", ->
    assert defaults
