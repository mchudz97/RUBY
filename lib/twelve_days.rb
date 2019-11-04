class TwelveDays
  attr_reader :presents, :numerals

  @@numerals = %w[first second third fourth fifth sixth
                  seventh eight ninth tenth eleventh twelfth]

  @@presents = ['twelve Drummers Drumming, ',
                'eleven Pipers Piping, ',
                'ten Lords-a-Leaping, ',
                'nine Ladies Dancing, ',
                'eight Maids-a-Milking, ',
                'seven Swans-a-Swimming, ',
                'six Geese-a-Laying, ',
                'five Gold Rings, ',
                'four Calling Birds, ',
                'three French Hens, ',
                'two Turtle Doves, and ',
                'a Partridge in a Pear Tree.']

  def self.sing_day(day)
    "On the #{@@numerals[day - 1]} day of Christmas my true love gave to me: "
      .concat @@presents[12 - day, 11].join
  end
end