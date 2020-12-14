class FoodController < ApplicationController

  def index
    @food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov/")

    response = conn.get("fdc/v1/foods/search") do |f|
      f.params["api_key"] = ENV['FOOD_API_KEY']
      f.params['query'] = @food  
    end
    @food_item = JSON.parse(response.body, symbolize_names: true )
    binding.pry
  end
end
