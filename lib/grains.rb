class Grains
    def self.square(number)
      if number < 1 or number > 64 then raise ArgumentError end
      (2**(number - 1))
    end
  
    def self.total
      sum = 0
      for i in 1..64
        sum += square(i)
      end
      sum
    end
  end