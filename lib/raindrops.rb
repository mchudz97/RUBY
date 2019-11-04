class Raindrops
    def self.convert(num)
      str = ''
      # https://stackoverflow.com/a/24262387
      div = (1..num).select { |n| (num % n).zero? }
      if div.include?(3) then str.concat 'Pling' end
      if div.include?(5) then str.concat 'Plang' end
      if div.include?(7) then str.concat 'Plong' end
      str.concat(num.to_s) if (div & [3, 5, 7]).none?
      str
    end
  end