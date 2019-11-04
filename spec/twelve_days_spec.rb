require 'twelve_days'
RSpec.describe TwelveDays do
  it("day 4") do
    expect("On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.").to(eq(TwelveDays.sing_day(4)))
  end
  it("the whole song") do
    skip
    song_file = File.expand_path("../song.txt", "twelve_days_test.rb")
    expected = IO.read(song_file)
    expect(TwelveDays.song).to(eq(expected))
  end
end
