class SumOfMultiples
    def initialize(*args)
      @numbers = args
      @sum = 0
    end
  
    def to(max)
      for i in 1..max - 1 do
        if a_multiple?(i) then @sum += i end
      end
      @sum
    end
  
    def a_multiple?(num)
      @numbers.map { |x| (num % x).zero? }.include? true
    end
  end