require 'resistor_color_duo'
RSpec.describe ResistorColorDuo do

  it("brown and black") do
    expect(ResistorColorDuo.value(["brown", "black"])).to(eq(10))
  end
  it("blue and grey") do
    expect(ResistorColorDuo.value(["blue", "grey"])).to(eq(68))
  end
  it("yellow and violet") do
    expect(ResistorColorDuo.value(["yellow", "violet"])).to(eq(47))
  end
  it("orange and orange") do
    expect(ResistorColorDuo.value(["orange", "orange"])).to(eq(33))
  end
  it("ignore additional colors") do
    expect(ResistorColorDuo.value(["green", "brown", "orange"])).to(eq(51))
  end
end
