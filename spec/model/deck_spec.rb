require 'spec_helper'

describe Deck do
  it 'has fifty two cards' do
    expect(Deck.new.cards.length).to eql(52)
  end
end
