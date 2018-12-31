class DrinksController < ApplicationController
  # COCKTAILS = HTTParty.get('http://localhost:8000/api/v1/cocktails')
  # DRINKS = JSON.parse(COCKTAILS.body)

  def index
    @drinks = Drink.all
    # byebug
  end

  def new
  end

  def show
    # @drink = DRINKS.fetch(params[:id])
  end

  def create

  end
end
