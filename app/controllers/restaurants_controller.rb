class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  after_action :sort_by_compatibility, only: %i[index]
  before_action :skip_policy_scope

  def index
    @all_restaurants = Restaurant.all.order(created_at: :desc)
    @users = params[:friend_ids].present? ? params[:friend_ids].map { |id| User.find(id.to_i) } : []
    @users << current_user
    @user_ids = @users.map(&:id)

    find_matching_restaurants
    sort_by_compatibility
    @restaurants
  end

  def show
    @users = params[:user_ids].map { |id| User.find(id.to_i) }
    @dish_type = Dish.dish_types
    # @starter = @restaurant.dishes.where(dish_type: "starter")
    # @salad = @restaurant.dishes.where(dish_type: "salad")
    # @main = @restaurant.dishes.where(dish_type: "main course")
    # @dessert = @restaurant.dishes.where(dish_type: "desserts")
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def dishes_for(user, restaurant = @restaurant)
    avail_dishes = []
    user_labels = user.health_labels.map(&:name)
    restaurant.dishes.each do |dish|
      dish_labels = dish.health_labels.map(&:name)
      avail_dishes << dish if (user_labels - dish_labels).empty?
    end
    avail_dishes
  end

  def find_matching_restaurants
    @restaurants = []
    Restaurant.all.each do |restaurant|
      @counter = 0
      @users.each do |user|
        @menu = dishes_for(user, restaurant)
        @counter += 1 unless @menu.empty?
      end
      @restaurants << restaurant if @counter == @users.count
    end
  end

  def sort_by_compatibility
    hash = {}
    @restaurants.map { |resto| hash[resto.id] = resto.compatibility(@users) }
    hash = hash.sort_by { |_, v| -v }
    sorted = hash.to_h
    @restaurants = sorted.map { |id, _| Restaurant.find(id) }
  end
end
