class SearchFacade

  def self.fetch_food(food)
    response = GovernmentService.fetch_food_details(food)
    resonse[:foods].map do |food_data|
      Food.new(food_data)
  end

end
