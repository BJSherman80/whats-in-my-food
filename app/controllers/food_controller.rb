class FoodController < ApplicationController

  def index
      food = SearchFacade.fetch_food(params[:food])

  #   @food = params[:q]
  #
  #   conn = Faraday.new(url: "https://api.nal.usda.gov/")
  #
  #   response = conn.get("fdc/v1/foods/search") do |f|
  #     f.params["api_key"] = ENV['FOOD_API_KEY']
  #     f.params['query'] = @food  
  #   end
  #    json = JSON.parse(response.body, symbolize_names: true )
  #    @ten_foods = json[:foods].first(10)
  #
  # end
end
