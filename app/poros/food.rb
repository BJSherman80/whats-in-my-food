class Food

  attr_reader :code, :description, :owner, :nutrients

  def initialize(attr)
    @code = attr[:fdcId]
    @description = attr[:description]
    @owner = attr[:commonNames]
    @nutrients = attr.food_nutrients
  end

  def food_nutrients
    attr[:foodNutrients].each do |nutrient|
      nutrient[:nutrientName]
    end
  end
  
end
