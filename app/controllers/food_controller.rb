class FoodController < ApplicationController

  def index
    @food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov/")

    response = conn.get("fdc/v1/search") do |f|
      f.headers["X-Api-Key"] = ENV['FOOD_API_KEY']
      f.params['query'] = @food               
    binding.pry
    end
  end
end
