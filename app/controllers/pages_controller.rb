class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]
  before_action :add_procs, only: %i[dashboard]
  before_action :user_friend, only: %i[create accept decline]

  def home
  end

  def dashboard
    @user = current_user
    @diets = current_user.diet_profiles
    @friends = current_user.friends
    @requests = @user.requested_friends
    @pending = @user.pending_friends

    @people = policy_scope(User)
    search if params[:query].present?
  end

  def create
    @user.friend_request(@friend)
    redirect_to dashboard_path
  end

  def accept
    @user.accept_request(@friend)
    redirect_to dashboard_path
  end

  def decline
    @user.decline_request(@friend)
    redirect_to dashboard_path
  end

  def search
    strangers = @people.reject { |user| @user.friends_with?(user) || user == current_user }
    @search = params[:query].downcase
    @results = strangers.select do |user|
      user.try(:username).downcase.include?(@search) unless user.username.nil?
    end
  end

  private

  def add_procs
    @diet = proc { |x| x.health_label.category == "diet" }
    @allergy = proc { |x| x.health_label.category == "allergy" }
    @macros = proc { |x| x.health_label.category == "macros" }
  end

  def user_friend
    @user = current_user
    authorize @user

    @friend = User.find(params[:id])
    authorize @friend
  end
end
