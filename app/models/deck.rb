class Deck
  attr_accessor :cards

  SUITS = %i( hearts spades diamonds clubs )
  DENOMINATIONS = %i( ace king queen jack ten nine eight seven six five four three two )

  def initialize
    build_cards
  end

  def build_cards
    @cards = []
    SUITS.each do |suit|
      DENOMINATIONS.each do |denomination|
        @cards << Card.new(denomination, suit)
      end
    end
  end
end
