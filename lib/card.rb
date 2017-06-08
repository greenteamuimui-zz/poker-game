class Card

  attr_accessor :value, :suit

  SUITS = [:D,:C,:H,:S]

  def initialize(value,suit)
    @value = value
    @suit = suit
  end

  def to_s
    if value == 14  #Deck will start wirh 2 to 14 where 2 is the lowest card, 14 is Ace
      "A-#{@suit}"
    elsif value == 11
      "J-#{@suit}"
    elsif value == 12
      "Q-#{@suit}"
    elsif value == 13
      "K-#{@suit}"
    else
      "#{@value}-#{@suit}"
    end
  end

  def <=>(other_card)
    if self.value > other_card.value
      1
    elsif self.value < other_card.value
      -1
    elsif self.value == other_card.value
      if SUITS.index(self.suit) > SUITS.index(other_card.suit)
        1
      else
        -1
      end
    end
  end

end
