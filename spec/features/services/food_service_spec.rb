require "rails_helper"

RSpec.describe "Food Service" do
  it "can get a list searched for foods" do
    search = FoodService.new.search_the_foods("cheese")
    search_count = search[:totalHits]
    item = search[:foods].first


    expect(search).to be_a(Hash)
    expect(search).to have_key(:totalHits)
    expect(search[:totalHits]).to be_an(Integer)

    expect(search).to have_key(:foods)
    expect(item).to be_a(Hash)

    expect(item).to have_key(:gtinUpc)
    expect(item[:gtinUpc]).to be_a(String)

    expect(item).to have_key(:description)
    expect(item[:description]).to be_a(String)

    expect(item).to have_key(:brandOwner)
    expect(item[:brandOwner]).to be_a(String)

    expect(item).to have_key(:ingredients)
    expect(item[:ingredients]).to be_a(String)
  end
end