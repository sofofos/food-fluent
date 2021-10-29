class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  before_action :skip_policy_scope

  def index
    # @restaurants = Restaurant.all.order(created_at: :desc)
    # find_health_label
    @all_restaurants = Restaurant.all.order(created_at: :desc)
    @users = params[:friend_ids].present? ? params[:friend_ids].map { |id| User.find(id.to_i) } : []

    @users << current_user

    @user_ids = @users.map(&:id)
    find_matching_restaurants
    @restaurants
  end

  def show
    @users = params[:user_ids].map { |id| User.find(id.to_i) }
    @starter = @restaurant.dishes.where(dish_type: "starter")
    @salad = @restaurant.dishes.where(dish_type: "salad")
    @main = @restaurant.dishes.where(dish_type: "main course")
    @dessert = @restaurant.dishes.where(dish_type: "desserts")
  end

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
        avail_dish = []
        user_labels = user.health_labels.map(&:name)
        restaurant.dishes.each do |dish|
          puts "I am here at counter #{counter}"
          dish_labels = dish.health_labels.map(&:name)
          avail_dish << dish if (user_labels - dish_labels).empty?
          end
        end
      end
      @restaurants << restaurant if counter >= @users.count
    end
    # users_health_label = current_user.health_labels
    # @dishes = Dish.all.select { |dish| (users_health_label - dish.health_labels).empty? }
    # @restaurants = @dishes.map(&:restaurant).uniq
    # return restaurants
  end
end
