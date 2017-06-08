require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) {Deck.new}
  let(:player_hand) {double("player_hand", hand:[])}

  describe "#initialize" do

    it "creates 52 cards object when initialized" do
      expect(deck.deck_storage.count).to eq(52)
    end

    it "creates cards with uniq value and suit" do
      count = deck.deck_storage.map { |n| [n.value,n.suit] }
      expect(count.count).to eq(52)
    end
  end

  describe "#dealt" do
    before(:each) do
      deck.dealt(player_hand)
    end

    it "dealt a card to the player_hand" do
      expect(player_hand.hand.count).to eq(1)
    end

    it "reduces the size of the deck accordingly" do
      expect(deck.size).to eq(51)
    end
  end

  describe "#deal_n" do
    before(:each) do
      deck.deal_n(5, player_hand)
    end

    it "deals n cards at a time" do
      p player_hand.hand
      p player_hand.hand.length
      expect(player_hand.hand.count).to eq(5)
    end

    it "reduces the size of the deck accordingly" do
      expect(deck.size).to eq(47)
    end
  end

  describe "#shuffle" do
    it "shuffles the card in the deck" do
      old_d = deck.deck_storage[10..12]
      deck.deck_storage.shuffle!
      new_d = deck.deck_storage[10..12]
      expect(old_d).to_not eq(new_d)
    end


  end
end
