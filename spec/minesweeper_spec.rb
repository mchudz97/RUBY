require 'minesweeper'
RSpec.describe Board do

  it("transform1") do
    inp = ["+------+", "| *  * |", "|  *   |", "|    * |", "|   * *|", "| *  * |", "|      |", "+------+"]
    out = ["+------+", "|1*22*1|", "|12*322|", "| 123*2|", "|112*4*|", "|1*22*2|", "|111111|", "+------+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform2") do
    inp = ["+-----+", "| * * |", "|     |", "|   * |", "|  * *|", "| * * |", "+-----+"]
    out = ["+-----+", "|1*2*1|", "|11322|", "| 12*2|", "|12*4*|", "|1*3*2|", "+-----+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform3") do
    inp = ["+-----+", "| * * |", "+-----+"]
    out = ["+-----+", "|1*2*1|", "+-----+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform4") do
    inp = ["+-+", "|*|", "| |", "|*|", "| |", "| |", "+-+"]
    out = ["+-+", "|*|", "|2|", "|*|", "|1|", "| |", "+-+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform5") do
    inp = ["+-+", "|*|", "+-+"]
    out = ["+-+", "|*|", "+-+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform6") do
    inp = ["+--+", "|**|", "|**|", "+--+"]
    out = ["+--+", "|**|", "|**|", "+--+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform7") do
    inp = ["+--+", "|**|", "|**|", "+--+"]
    out = ["+--+", "|**|", "|**|", "+--+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform8") do
    inp = ["+---+", "|***|", "|* *|", "|***|", "+---+"]
    out = ["+---+", "|***|", "|*8*|", "|***|", "+---+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("transform9") do
    inp = ["+-----+", "|     |", "|   * |", "|     |", "|     |", "| *   |", "+-----+"]
    out = ["+-----+", "|  111|", "|  1*1|", "|  111|", "|111  |", "|1*1  |", "+-----+"]
    expect(Board.transform(inp)).to(eq(out))
  end
  it("different len") do
    inp = ["+-+", "| |", "|*  |", "|  |", "+-+"]
    expect { Board.transform(inp) }.to(raise_error(ArgumentError))
  end
  it("faulty border") do
    inp = ["+-----+", "*   * |", "+-- --+"]
    expect { Board.transform(inp) }.to(raise_error(ArgumentError))
  end
  it("invalid char") do
    inp = ["+-----+", "|X  * |", "+-----+"]
    expect { Board.transform(inp) }.to(raise_error(ArgumentError))
  end
end
