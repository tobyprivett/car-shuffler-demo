require 'spec_helper'

describe Deck do

  let(:cards) { Deck.new.cards}

  it 'has fifty two cards' do
    expect(cards.length).to eql(52)
  end

  it 'has unique cards' do
    expect(cards.uniq).to eql(cards)
  end
end
