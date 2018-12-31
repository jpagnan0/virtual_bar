class DrinksController < ApplicationController
  COCKTAILS = HTTParty.get("http://localhost:8000/api/v1/cocktails")
  DRINKS = JSON.parse(COCKTAILS.body)
  def index

    @drinks = DRINKS

    @drinks_hash = {

    }
    # byebug
    # byebug
    # byebug
  end

  def new
  end

  def show
    @drink = DRINKS.fetch(params[:id])
    byebug
  end
end
