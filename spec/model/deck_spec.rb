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

  it 'has 4 suits' do
    expect(Deck::SUITS.length).to eql(4)
  end

  it 'has 13 denominations' do
    expect(Deck::DENOMINATIONS.length).to eql(13)
  end
end
