class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  def index
    @restaurants = Restaurant.all.order(created_at: :desc)
    # find_health_tag
  end

  def show; end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def find_health_tag
    users_tags = user.

    @dishes = Dish.all
    @restaurants = Restaurant.all.reject{ |restaurant| restaurant.dishes != users_tags}
  end
end
