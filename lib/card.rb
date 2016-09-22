class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def self.card_suits
    [:Hearts, :Spades, :Clubs, :Diamonds]
  end

  def self.card_values
  { :Two => 2,
    :Three => 3,
    :Four => 4,
    :Five => 5,
    :Six => 6,
    :Seven => 7,
    :Eight => 8,
    :Nine => 9,
    :Ten => 10,
    :Jack => 11,
    :Queen => 12,
    :King => 13,
    :Ace => 14
  }
  end

  def <=>(other_card)
    @value <=> other_card.value
  end

  def to_s
    puts "#{card_values.key(@value)} of #{@suit}"
  end
end
