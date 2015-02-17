require 'rails_helper'

RSpec.describe CardsController, type: :controller do

  describe "GET #index" do
    let(:unshuffled_cards) { Deck.new.cards.map(&:to_s) }

    it "assigns unshuffled cards by default" do
      get :index
      expect(assigns(:cards).map(&:to_s)).to eql(unshuffled_cards)
    end

    it "assigns shuffled cards when the shuffle param is passed" do
      get :index, q: 'shuffle'
      expect(assigns(:cards).map(&:to_s)).not_to eql(unshuffled_cards)
    end
  end
end
