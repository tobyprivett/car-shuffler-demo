class Card
  def initialize(denomination, suit)
    @denomination = denomination
    @suit = suit
    validate_params
  end

  def to_s
    "#{ @denomination.to_s.humanize } of #{ @suit.to_s.humanize }"
  end

private
  def validate_params
    raise ArgumentError unless Deck::SUITS.include?(@suit)
    raise ArgumentError unless Deck::DENOMINATIONS.include?(@denomination)
  end
end
