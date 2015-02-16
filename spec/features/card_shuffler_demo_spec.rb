require 'rails_helper'

RSpec.describe 'Card shuffler demo', feature: true do
  it 'displays the shuffled cards' do
    visit '/'
    click_link 'Shuffle cards'
    expect(page).to have_selector('.card', count: 52)
  end
end
