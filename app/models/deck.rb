class Deck
  attr_accessor :cards

  def initialize
    @cards = Array.new(52){ |i| Card.new }
  end
end
