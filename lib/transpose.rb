# transpose
class Transpose
  def self.transpose(str)
    str = str.split("\n").map { |s| s.split('') }
    justify(str)
    str = str.transpose
    str = str.map(&:join).join("\n")
    str.rstrip
  end

  def self.justify(str)
    max_size = str.map(&:size).max
    str.each { |x| until x.size == max_size do x.append(' ') end }
  end
end
# str.map {|x| x.reject(&:nil?) }
