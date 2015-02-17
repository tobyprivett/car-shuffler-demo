require 'spec_helper'

describe Card do
  it 'renders as a string' do
    expect(Card.new(:ace, :clubs).to_s).to eql('Ace of Clubs')
  end

  it 'expects denomination and suit params to be present' do
    expect{ Card.new }.to raise_error(ArgumentError)
  end

  it 'rejects invalid denomination and suit params' do
    expect{ Card.new(:eleven, :rabbits) }.to raise_error(ArgumentError)
  end
end
