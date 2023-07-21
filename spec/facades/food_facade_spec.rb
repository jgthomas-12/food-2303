require "rails_helper"

RSpec.describe FoodFacade do
  describe "class methods" do
    describe ".search_foods(X)" do
      it "returns all foods with X" do
        all_cheese = FoodFacade.new.search_foods("cheese")
        expect(all_cheese).to be_an(Array)
        expect(all_cheese.first).to be_a(FoodItem)
        expect(all_cheese.first.search_count).to be_an(Integer)
        expect(all_cheese.first.description).to be_a(String)
        expect(all_cheese.first.brand_owner).to be_a(String)
        expect(all_cheese.first.ingredients).to be_a(String)
        expect(all_cheese.first.upc).to be_a(String)
      end
    end
  end
end