require "rails_helper"

RSpec.describe FoodItem do
  it "exists and has attributes" do
    hits = 5

    dats = {
      gtinUpc: "37",
      description: "One thing",
      brandOwner: "KGLW",
      ingredients: "Lotsa fahks"
    }
    item = FoodItem.new(dats, hits)

    expect(item).to be_a(FoodItem)
    expect(item.search_count).to eq(hits)
    expect(item.upc).to eq(dats[:gtinUpc])
    expect(item.description).to eq(dats[:description])
    expect(item.brand_owner).to eq(dats[:brandOwner])
    expect(item.ingredients).to eq(dats[:ingredients])
  end
end