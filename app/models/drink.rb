class Drink < ApplicationRecord
  belongs_to :user
  # 
  # COCKTAILS = HTTParty.get("http://localhost:8000/api/v1/cocktails")
  # def self.all_drinks
  #   drinks = JSON.parse(COCKTAILS.body)
  #   drinks.each do |drink|
  #     Drink.create(drink_name: drink["name"], drink_)
  #   end
end
