class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  before_action :skip_policy_scope

  def index
    @restaurants = Restaurant.all.order(created_at: :desc)
    find_health_label
  end

  def show; end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def find_health_label
    users_health_label = current_user.diet_profiles.map(&:health_label)
    @dishes = Dish.all.select { |dish| (users_health_label - dish.health_labels).empty? }
    @restaurants = @dishes.map(&:restaurant).uniq
  end
end
