require 'spec_helper'

describe Deck do

  let(:cards) { Deck.new.cards}

  it 'has fifty two cards' do
    expect(cards.length).to eql(52)
  end

  it 'has unique cards' do
    expect(cards.uniq).to eql(cards)
  end

  it 'is made up of card objects' do
    cards.each do |card|
      expect(card).to be_a(Card)
    end
  end
end
