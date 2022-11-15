class RestaurantsController < ApplicationController
  def top
    @restaurants = Restaurant.where(rating: 5)
  end
end
