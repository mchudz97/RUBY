# hamming
class Hamming
    def self.compute(s1, s2)
      raise ArgumentError unless s1.length == s2.length
      # eq = number of equal signs
      eq = [s1.split(''), s2.split('')].transpose.map { |a| a[0].count(a[1]) }.sum
      s1.length - eq
    end
  end