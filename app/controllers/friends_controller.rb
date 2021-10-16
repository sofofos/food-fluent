class FriendsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_friend, only: %i[create accept decline]
  before_action :skip_policy_scope

  def index
    @user = current_user
    @friends = @user.friends.all
    @requests = @user.requested_friends
    @pending = @user.pending_friends
  end

  def create
    @user.friend_request(@friend)
  end

  def accept
    @user.accept_request(@friend)
    redirect_to friends_path
  end

  def decline
    @user.decline_request(@friend)
    redirect_to friends_path
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
    # authorize @friend
  end
end

# friendship gem methods relational map verbal

# JON sends a friend request to SOF : jon.friend_request(sof)
# SOF checks the friend requests she received: sof.requested_friends
# JON checks the friends he has already sent requests to: jon.pending_friends
# SOF accepts the friend request from jon: sof.accept_request(jon)
# SOF checks the list of her friends: sof.friends.all


