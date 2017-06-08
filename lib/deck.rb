require_relative 'card'

class Deck

  attr_accessor :deck_storage, :size

  def initialize
    @deck_storage = Deck.cards_generation
    @size = @deck_storage.length
  end

  def self.cards_generation
    ans = []
    (2..14).each { |num| ans << Card.new(num, :D)}
    (2..14).each { |num| ans << Card.new(num, :C)}
    (2..14).each { |num| ans << Card.new(num, :H)}
    (2..14).each { |num| ans << Card.new(num, :S)}
    ans.shuffle!
  end

  def shuffle
    @deck_storage.shuffle!
  end

  def dealt(player)
    player.hand << @deck_storage.pop
    @size -= 1
  end

  def deal_n(n, player_hand)
    player_hand.hand.concat(@deck_storage.take(n))
    @size -= n
  end



end
