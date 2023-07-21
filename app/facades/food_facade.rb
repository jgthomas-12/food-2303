class FoodFacade
  # def list_of_foods
  #   service = FoodService.new
  #   request = service.get_the_foods
  #   @foods = request[:data].map do |food|
  #     FoodItem.new(food)
  #   end
  # end
  # attr_reader :total_hits

  def search_foods(search)
    service = FoodService.new
    request = service.search_the_foods(search)
    total_hits = request[:totalHits]
    @foods = request[:foods].map do |food|
      FoodItem.new(food, total_hits)
    end
  end
end