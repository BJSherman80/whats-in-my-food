class GovernmentService

  def self.fetch_food_details(food)
    response = conn.get("fdc/v1/search") do |f|
      f.params['api_key'] = ENV[FOOD_API_KEY]
      f.params['query'] = food
    end
    JSON.parse(response.body, symbolize_names: true )
  end

  def self.conn
    conn = Faraday.new(url: "https://api.nal.usda.gov/")
  end

end
