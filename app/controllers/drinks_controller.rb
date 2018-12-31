class DrinksController < ApplicationController
  # COCKTAILS = HTTParty.get('http://localhost:8000/api/v1/cocktails')
  # DRINKS = JSON.parse(COCKTAILS.body)

  def index
    @drinks = Drink.all
    # byebug
  end


  def show
    @drink = Drink.find(params[:id])
  end

end
