class FoodService
  def get_the_foods
    get_url("fdc/v1/foods/list")
  end

  def search_the_foods(search)
    get_url("fdc/v1/foods/search?&query=#{search}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |f|
      f.headers["X-Api-Key"] = ENV["foods_key"]
    end
  end
end