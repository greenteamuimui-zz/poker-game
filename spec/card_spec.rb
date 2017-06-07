require 'rspec'
require 'card'

describe Card do
  subject(:card) {Card.new(14,:D)}
  let(:card1) {Card.new(2,:D)}

  describe "#initialize" do
    it "stores a value and a suit for the card" do
      expect(card.value).to eq(14)
      expect(card.suit).to eq(:D)
    end
  end

  describe "#to_s" do
    it "display the value and suit as a string for the player" do
      expect(card.to_s).to eq("A-D")
    end

    it "display the value when it's a special kind(Ace, Queen, etc.)" do
      expect(card1.to_s).to eq("2-D")
    end
  end

  describe "<=>" do
  let(:card2) {Card.new(14,:S)}

    it "extends the equal method to compare two card instances with two values" do
      expect(card<=>card1).to eq(1)
    end

    it "extends the equal method to compare two card instances with same values" do
      expect(card<=>card2).to eq(-1)
    end
  end

end
