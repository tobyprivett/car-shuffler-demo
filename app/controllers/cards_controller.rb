class CardsController < ApplicationController
  def index
    @cards = (0..51).map{ |card| 'a card' } if params[:q] == 'shuffle'
  end
end
