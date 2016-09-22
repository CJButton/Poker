require_relative 'card'

class Deck
  attr_accessor :cards, :discard_pile

  def initialize
    @cards = []
    @discard_pile = []
    create_cards
  end

  def create_cards
    Card.card_suits.each do |suit|
      Card.card_values.each_pair do |_, value|
        @cards << Card.new(suit, value)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def draw(num = 1)
    @cards.pop(num)
  end

  def discard(cards)
    @discard_pile += cards
  end
end
