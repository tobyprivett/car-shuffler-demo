require 'spec_helper'

describe Card do
  it 'renders as a string' do
    expect(Card.new.to_s).to eql('a card')
  end
end
