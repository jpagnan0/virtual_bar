module DrinksHelper
  include HTTParty
  # BASE_URI = "http://localhost:8000/api/v1/cocktails"
  # def api
  #   BASE_URI
  # end

  def get_drink_id(drink)
    HTTParty.get("http://localhost:8000/api/v1/cocktails/#{drink['id']}")
  end
end
