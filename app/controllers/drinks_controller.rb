class DrinksController < ApplicationController
  # COCKTAILS = HTTParty.get('http://localhost:8000/api/v1/cocktails')
  # DRINKS = JSON.parse(COCKTAILS.body)
  before_action :find_drink, only: [:show]
  before_action :get_drinks_from_tab, only: [:index]

  def index
    @drinks = Drink.all
    # byebug
    render(:index)
  end


  def show
    render(:show)
  end

  private

  def find_drink
    @drink = Drink.find(params[:id])
  end

end
