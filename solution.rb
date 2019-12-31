class Deck
  attr_reader :cards
  def initialize
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['hearts', 'clubs', 'diamonds', 'spades']
    @cards = []
  
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def choose_card
    @cards.delete_at(rand(@cards.length))
  end
end

class Card
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
