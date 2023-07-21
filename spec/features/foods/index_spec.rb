require "rails_helper"

RSpec.describe "foods index" do
  describe "when I visit the foods index page" do
    # As a user,
    # When I visit "/"
    # And I fill in the search form with "sweet potatoes"
    # (Note: Use the existing search form)
    # And I click "Search"
    # Then I should be on page "/foods"
    # Then I should see a total of the number of items returned by the search.
    # (sweet potatoes should find more than 30,000 results)
    # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

    # And for each of the foods I should see:
    # - The food's GTIN/UPC code
    # - The food's description
    # - The food's Brand Owner
    # - The food's ingredients

    it "displays the items search count and a list of attributes" do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_button "Search"
      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("UPC: 8901020020844")
      expect(page).to have_content("Amount of Items: 55579")
    end
  end
end