class FoodFacade
  def list_of_foods
    service = FoodService.new
    request = service.get_the_foods
    @foods = request[:data].map do |food|
      FoodItem.new(food)
    end
  end
end