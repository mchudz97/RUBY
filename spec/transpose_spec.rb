require 'transpose'
RSpec.describe Transpose do
  context 'checking if matrix from input returns correctly transposed matrix' do
    it("empty string") do
      input = ""
      expected = ""
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("two characters in a row") do
      input = "A1"
      expected = "A\n1"
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("two characters in a column") do
      input = "A\n1"
      expected = "A1"
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("simple") do
      input = "ABC\n123"
      expected = "A1\nB2\nC3"
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("single line") do
      input = "Single line."
      expected = "S\ni\nn\ng\nl\ne\n \nl\ni\nn\ne\n."
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("first line longer than second line") do
      input = "The fourth line.\nThe fifth line."
      expected = "TT\nhh\nee\n  \nff\noi\nuf\nrt\nth\nh \n l\nli\nin\nne\ne.\n."
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("second line longer than first line") do
      input = "The first line.\nThe second line."
      expected = "TT\nhh\nee\n  \nfs\nie\nrc\nso\ntn\n d\nl \nil\nni\nen\n.e\n ."
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("square") do
      input = "HEART\nEMBER\nABUSE\nRESIN\nTREND"
      expected = "HEART\nEMBER\nABUSE\nRESIN\nTREND"
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("rectangle") do
      input = "FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE"
      expected = "FOBS\nRULE\nATOP\nCLOT\nTIME\nUNIT\nRENT\nEDGE"
      expect(Transpose.transpose(input)).to(eq(expected))
    end
    it("triangle") do
      input = "T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR"
      expected = "TEASER\n EASER\n  ASER\n   SER\n    ER\n     R"
      expect(Transpose.transpose(input)).to(eq(expected))
    end
  end
end
