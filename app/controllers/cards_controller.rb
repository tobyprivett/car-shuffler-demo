class CardsController < ApplicationController
  def index
    @cards = Deck.new.cards
    @cards.shuffle! if params[:q] == 'shuffle'
  end
end
