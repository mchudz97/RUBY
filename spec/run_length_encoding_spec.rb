require 'run_length_encoding'
RSpec.describe RunLengthEncoding do
  context 'checking if encoding generate correct output chars' do
    it("encode empty string") do
      input = ""
      output = ""
      expect(RunLengthEncoding.encode(input)).to(eq(output))
    end
    it("encode single characters only are encoded without count") do
      input = "XYZ"
      output = "XYZ"
      expect(RunLengthEncoding.encode(input)).to(eq(output))
    end
    it("encode string with no single characters") do
      input = "AABBBCCCC"
      output = "2A3B4C"
      expect(RunLengthEncoding.encode(input)).to(eq(output))
    end
    it("encode single characters mixed with repeated characters") do
      input = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
      output = "12WB12W3B24WB"
      expect(RunLengthEncoding.encode(input)).to(eq(output))
    end
    it("encode multiple whitespace mixed in string") do
      input = "  hsqq qww  "
      output = "2 hs2q q2w2 "
      expect(RunLengthEncoding.encode(input)).to(eq(output))
    end
    it("encode lowercase characters") do
      input = "aabbbcccc"
      output = "2a3b4c"
      expect(RunLengthEncoding.encode(input)).to(eq(output))
    end
  end
  context 'checking if decoding returns correct string' do
    it("decode empty string") do
      input = ""
      output = ""
      expect(RunLengthEncoding.decode(input)).to(eq(output))
    end
    it("decode single characters only") do
      input = "XYZ"
      output = "XYZ"
      expect(RunLengthEncoding.decode(input)).to(eq(output))
    end
    it("decode string with no single characters") do
      input = "2A3B4C"
      output = "AABBBCCCC"
      expect(RunLengthEncoding.decode(input)).to(eq(output))
    end
    it("decode single characters with repeated characters") do
      input = "12WB12W3B24WB"
      output = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
      expect(RunLengthEncoding.decode(input)).to(eq(output))
    end
    it("decode multiple whitespace mixed in string") do
      input = "2 hs2q q2w2 "
      output = "  hsqq qww  "
      expect(RunLengthEncoding.decode(input)).to(eq(output))
    end
    it("decode lower case string") do
      input = "2a3b4c"
      output = "aabbbcccc"
      expect(RunLengthEncoding.decode(input)).to(eq(output))
    end
  end
  context 'checking if decoding encoded string is the same as input' do
    it("consistency encode followed by decode gives original string") do
      input = "zzz ZZ  zZ"
      encoded = RunLengthEncoding.encode(input)
      expect(RunLengthEncoding.decode(encoded)).to(eq(input))
    end
  end
end
