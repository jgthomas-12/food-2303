require "rails_helper"

RSpec.describe "Welcome page" do
  describe "when I vist the root path" do
    it "links to the foods index from the search button" do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_button "Search"
      expect(current_path).to eq(foods_path)
    end
  end
end