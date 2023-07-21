class FoodFacade
  def search_foods(search)
    service = FoodService.new
    request = service.search_the_foods(search)
    total_hits = request[:totalHits]
    @foods = request[:foods].map do |food|
      FoodItem.new(food, total_hits)
    end
  end
end