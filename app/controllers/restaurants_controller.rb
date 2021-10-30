class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  before_action :skip_policy_scope
  before_action :save_query_path, only: %i[index]

  def index
    @all_restaurants = Restaurant.all.order(created_at: :desc)
    @users = params[:friend_ids].present? ? params[:friend_ids].map { |id| User.find(id.to_i) } : []
    @users << current_user
    @user_ids = @users.map(&:id)

    find_matching_restaurants
    sort_by_compatibility
    @restaurants
    session[:query] = @query_path
    session[:user_ids] = @user_ids
  end

  def show
    @user_ids = session[:user_ids] || params[:user_ids]
    @users = @user_ids.map { |id| User.find(id.to_i) }
    @dish_type = Dish.dish_types
    @query_path = session[:query]
  end

  def save_query_path
    @query_path = "#{request.protocol}#{request.host_with_port}"
    @query_path << request.fullpath if URI(request.fullpath).path == "/restaurants"
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

  # currently only for matched restos. Do we extend it to @all_restaurants ?
  def sort_by_compatibility
    hash = {}
    @restaurants.map { |resto| hash[resto.id] = resto.compatibility(@users) }
    hash = hash.sort_by { |_, v| -v }
    sorted = hash.to_h
    @restaurants = sorted.map { |id, _| Restaurant.find(id) }
  end

end
