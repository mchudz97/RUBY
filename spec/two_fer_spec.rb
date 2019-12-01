require 'two_fer'
RSpec.describe TwoFer do
  context 'when no input value' do
    it("no name given") do
      expect(TwoFer.two_fer).to(eq("One for you, one for me."))
    end
  end
  context 'when value at input' do
    it("a name given") do
      expect(TwoFer.two_fer("Alice")).to(eq("One for Alice, one for me."))
    end
    it("another name given") do
      expect(TwoFer.two_fer("Bob")).to(eq("One for Bob, one for me."))
    end
  end
end
