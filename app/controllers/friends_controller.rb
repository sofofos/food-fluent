class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @friends = @user.friends.all
    @requests = @user.requested_friends
    @pending = @user.pending_friends
  end

  def create
    user_friend
    @user.friend_request(friend)

    # redirect_to TODO:where to redirect-to?
  end

  def accept
    user_friend
    @user.accept_request(friend)
  end

  def decline
    user_friend
    @user.decline_request(friend)
  end

  # potential search for friend method, validate if useful
  # def search
  #   @search = params[:search].downcase
  #   @results = User.all.select do |user|
  #     user.username.downcase.include?(@search)
  #   end
  # end

  private

  def user_friend
    @user = current_user
    @friend = User.find(params[:id])
  end

end

# friendship gem methods relational map verbal

# JON sends a friend request to SOF : jon.friend_request(sof)
# SOF checks the friend requests she received: sof.requested_friends
# JON checks the friends he has already sent requests to: jon.pending_friends
# SOF accepts the friend request from jon: sof.accept_request(jon)
# SOF checks the list of her friends: sof.friends.all


