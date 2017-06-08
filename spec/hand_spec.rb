require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) {Hand.new}
  let(:c1) {Card.new(2, "S")}
  let(:c2) {Card.new(2, "S")}
  let(:c3) {Card.new(3, "S")}
  let(:c4) {Card.new(4, "S")}
  let(:c5) {Card.new(5, "S")}

  describe "#initialize" do
    it "starts the hand with zero cards" do
      expect(hand.hand).to eq([])
    end
  end

  describe "#read" do
    it "returns an array of the cards' value and suit in an array" do
      hand.hand = []
    end
  end


  describe "#one_pair" do
    hand.hand = []
    it "check whether the hand has only one pair" do
      expect(hand.hand.one_pair).to eq true
    end
  end



end
