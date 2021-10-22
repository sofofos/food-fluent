class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  before_action :group_dishes, only: %i[show]
  before_action :skip_policy_scope

  def index
    @restaurants = Restaurant.all.order(created_at: :desc)
    # find_health_label
    # @restaurants = Restaurant.all.order(created_at: :desc)
    @users = params[:friend_ids].map{|id| User.find(id)}
    
    @users << current_user
    find_matching_restaurants
  end

  def show; end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def find_matching_restaurants
    @restaurants = []
    Restaurant.all.each do |restaurant|
      counter = 0
      @users.each do |user|
        restaurant.dishes.each do |dish|
          if (user.health_labels - dish.health_labels).empty?
            counter += 1
            break
          end
        end
      end
      @restaurants << restaurant if counter === @users.count
    end
    # users_health_label = current_user.health_labels
    # @dishes = Dish.all.select { |dish| (users_health_label - dish.health_labels).empty? }
    # @restaurants = @dishes.map(&:restaurant).uniq
  end

  def group_dishes
    @grouped = @restaurant.dishes.group_by { |x| x[:dish_type] }
  end
end
