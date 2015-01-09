
describe "math-extras Math extensions", ->
  require '../'

  it "should convert degrees to radians", ->
    expect(Math.radians(180)).toEqual Math.PI

  it "should convert radians to degrees", ->
    expect(Math.degrees(Math.PI)).toEqual 180

  it "should compute the sign of a number", ->
    expect(Math.sign(-33.42)).toEqual -1

  it "should compute the factorial of a number", ->
    expect(Math.factorial(10)).toEqual 3628800

  it "should compute the base-10 log of a number", ->
    expect(Math.log10(10)).toEqual 1

  it "should compute the error function of a number", ->
    expect(Math.erf(-3)).toBeCloseTo -0.999977909503, 1e-6
    expect(Math.erf(-1)).toBeCloseTo -0.842700792950, 1e-6
    expect(Math.erf(0.0)).toBeCloseTo 0.0, 1e-6
    expect(Math.erf(0.5)).toBeCloseTo 0.520499877813, 1e-6
    expect(Math.erf(2.1)).toBeCloseTo 0.99702053334, 1e-6
