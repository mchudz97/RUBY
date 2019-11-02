require 'binary_search_tree'
  RSpec.describe Bst do
  it("data is retained") { expect(Bst.new(4).data).to(eq(4)) }
  it("inserting less") do
    four = Bst.new(4)
    four.insert(2)
    expect(four.data).to(eq(4))
    expect(four.left.data).to(eq(2))
  end
  it("inserting same") do
    four = Bst.new(4)
    four.insert(4)
    expect(four.data).to(eq(4))
    expect(four.left.data).to(eq(4))
  end
  it("inserting right") do
    four = Bst.new(4)
    four.insert(5)
    expect(four.data).to(eq(4))
    expect(four.right.data).to(eq(5))
  end
  it("complex tree") do
    four = Bst.new(4)
    four.insert(2)
    four.insert(6)
    four.insert(1)
    four.insert(3)
    four.insert(7)
    four.insert(5)
    expect(four.data).to(eq(4))
    expect(four.left.data).to(eq(2))
    expect(four.left.left.data).to(eq(1))
    expect(four.left.right.data).to(eq(3))
    expect(four.right.data).to(eq(6))
    expect(four.right.left.data).to(eq(5))
    expect(four.right.right.data).to(eq(7))
  end
  def record_all_data(bst)
    all_data = []
    bst.each { |data| (all_data << data) }
    all_data
  end
  it("iterating one element") do
    expect(record_all_data(Bst.new(4))).to(eq([4]))
  end
  it("iterating over smaller element") do
    four = Bst.new(4)
    four.insert(2)
    expect(record_all_data(four)).to(eq([2, 4]))
  end
  it("iterating over larger element") do
    four = Bst.new(4)
    four.insert(5)
    expect(record_all_data(four)).to(eq([4, 5]))
  end
  it("iterating over complex tree") do
    four = Bst.new(4)
    four.insert(2)
    four.insert(1)
    four.insert(3)
    four.insert(6)
    four.insert(7)
    four.insert(5)
    expect(record_all_data(four)).to(eq([1, 2, 3, 4, 5, 6, 7]))
  end
  it("each returns enumerator if no block") do
    tree = Bst.new(4)
    [2, 1, 3, 6, 7, 5].each { |x| tree.insert(x) }
    each_enumerator = tree.each
    expect(each_enumerator).to(be_a(Enumerator))
    (1..7).each { |x| expect(each_enumerator.next).to(eq(x)) }
    expect { each_enumerator.next }.to(raise_error(StopIteration))
  end
end
