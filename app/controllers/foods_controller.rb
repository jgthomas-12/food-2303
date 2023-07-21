class FoodsController < ApplicationController
  def index
    @facade = FoodFacade.new.search_foods(params[:q])
  end
end