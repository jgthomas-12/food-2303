class FoodItem
attr_accessor :total_hits

attr_reader   :search_count,
              :description,
              :brand_owner,
              :ingredients,
              :upc

  def initialize(data, total_hits)
    @search_count = total_hits
    @upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end